/* Copyright (c) 2012 Robert Nordier.  All rights reserved. */

/* BCPL compiler backend: generate x86 assembler from OCODE. */

#include <assert.h>
#include <ctype.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include "oc.h"

#define WORDSZ 4   /* 32-bit code */
#define SDSZ 5000  /* Size of static data array */

/* data types used in load stack */
#define X_R   0
#define X_P   1
#define X_G   2
#define X_L   3
#define X_N   4
#define X_LP  5
#define X_LG  6
#define X_LL  7

/* x86 instructions in table */
#define X_MOV   0
#define X_LEA   1
#define X_JMP   2
#define X_CALL  3
#define X_IMUL  4
#define X_IDIV  5
#define X_SUB   6
#define X_CMP   7
#define X_ADD   8
#define X_NEG   9
#define X_NOT  10
#define X_AND  11
#define X_OR   12
#define X_XOR  13

/* used in table below */
#define XCJ 8   /* call/jump instruction */
#define XI1 4   /* eax assumed */
#define XNA 3   /* mask */

static const char *const xistr[] =
{
    "movl", "leal", "jmpl", "calll", "imull", "idivl", "subl",
    "cmpl", "addl", "negl", "notl", "andl", "orl", "xorl"
};

static const int xitab[] =
{
    2, 2, XCJ | 1, XCJ | 1, XI1 | 2, XI1 | 2, 2,
    2, 2, 1, 1, 2, 2, 2
};

/* machine registers */
static const char *const reg[] =
{
    "eax", "ecx"
};

/* relational operators */
static const char *relstr[][2] =
{
    {"ne", "e"},
    {"e", "ne"},
    {"ge", "l"},
    {"le", "g"},
    {"g", "le"},
    {"l", "ge"}
};

static int sdata[SDSZ][2];  /* static data */
static int dt;              /* data pointer */
static int sp;              /* stack pointer */
static int ltype[2];        /* load stack: type */
static int ldata[2];        /* load stack: data */
static int lp;              /* load stack pointer */
static int labno;           /* label counter */
static int loff;            /* label offset */
static int ch;              /* last char read */

static int  gencode(void);
static void load(int, int);
static void save(int, int);
static void force(int);
static void loadreg(int, int);
static void codex(int);
static void code(int, ...);
static void defdata(int, int);
static void outdata(int, int);
static void codelab(int);
static void emit(const char *, ...);
static char *label(int);
static int  rdop(int);
static int  rdn(void);
static void error(const char *, ...);

int main(void) {
    int op;

    do
    {
        labno = 1000;
        op = gencode();
        loff += 1000;
    } while (op != S_END);
    return 0;
}

static int gencode(void) {
    int ro, op, s1, s2, s3, sn;

    dt = sp = lp = ro = 0;
    emit(".text");
    for (;;)
    {
        op = rdop(0);
        if (ch == EOF)
        {
            return S_END;
        }
        if (op < 0 || op > OPMAX)
        {
            error("Bad op %d", op);
        }
        s1 = optab1(op);
        s2 = optab2(op);
        s3 = optab3(op);
        if (s3 <= 7)
        {
            force(s1);
            if (s3)
            {
                loadreg(0, s3 == 1 ? 0 : s3 == 2 ? ltype[0] != X_N : 1);
            }
            if (s3 >= 4)
            {
                loadreg(1, s3 == 4 ? 0 : s3 == 5 ? ltype[1] == X_N : 1);
            }
        }
        switch (op)
        {
            case S_LN:
                load(X_N, rdn());
                break;
            case S_TRUE:
                load(X_N, -1);
                break;
            case S_FALSE:
                load(X_N, 0);
                break;
            case S_LP:
                load(X_P, rdn());
                break;
            case S_LG:
                load(X_G, rdn());
                break;
            case S_LL:
                load(X_L, rdn());
                break;
            case S_LLP:
                load(X_LP, rdn());
                break;
            case S_LLG:
                load(X_LG, rdn());
                break;
            case S_LLL:
                load(X_LL, rdn());
                break;
            case S_QUERY:
                load(X_R, lp != 0);
                break;
            case S_LSTR:
            {
                int n, l, i;
                n = rdn();
                l = --labno;
                defdata(S_DATALAB, l);
                defdata(S_LSTR, n);
                for (i = 1; i <= n; i++)
                {
                    defdata(S_LSTR, rdn());
                }
                load(X_LL, l);
            }
            break;
            case S_SP:
                save(X_P, rdn());
                break;
            case S_SG:
                save(X_G, rdn());
                break;
            case S_SL:
                save(X_L, rdn());
                break;
            case S_ENTRY:
            {
                int n, l, i;
                n = rdn();
                l = rdn();
                printf("//\t");
                for (i = 0; i < n; i++)
                {
                    putchar(rdn());
                }
                putchar('\n');
                codelab(l);
                emit("pop (%%ecx)");
                emit("mov %%ebp,4(%%ecx)");
                emit("mov %%ecx,%%ebp");
            }
            break;
            case S_ENDPROC:
                rdn();
                break;
            case S_SAVE:
            case S_STACK:
                sn = rdn();
                break;
            case S_STORE:
                break;
            case S_RV:
                emit("mov (,%%eax,4),%%eax");
                break;
            case S_ABS:
                emit("test %%eax,%%eax");
                emit("jns 1f");
                emit("neg %%eax");
                emit("1:");
                break;
            case S_NEG:
            case S_NOT:
                codex(op == S_NEG ? X_NEG : X_NOT);
                break;
            case S_MULT:
            case S_DIV:
            case S_REM:
                if (op == S_DIV || op == S_REM)
                {
                    emit("cltd");
                }
                codex(op == S_MULT ? X_IMUL : X_IDIV);
                if (op == S_REM)
                {
                    emit("mov %%edx,%%eax");
                }
                break;
            case S_PLUS:
            case S_MINUS:
                codex(op == S_MINUS ? X_SUB : X_ADD);
                break;
            case S_EQ:
            case S_NE:
            case S_LS:
            case S_GR:
            case S_LE:
            case S_GE:
            {
                int o2;
                codex(X_CMP);
                o2 = rdop(1);
                if (o2 == S_JT || o2 == S_JF)
                {
                    ro = op;
                }
                else
                {
                    emit("set%s %%al", relstr[op - S_EQ][1]);
                    emit("movzx %%al,%%eax");
                    emit("neg %%eax");
                }
            }
            break;
            case S_LSHIFT:
            case S_RSHIFT:
                emit("sh%cl %%cl,%%eax", op == S_RSHIFT ? 'r' : 'l');
                break;
            case S_LOGAND:
            case S_LOGOR:
                codex(op == S_LOGOR ? X_OR : X_AND);
                break;
            case S_EQV:
            case S_NEQV:
                if (op == S_EQV)
                {
                    emit("xorl $-1,%%eax");
                }
                codex(X_XOR);
                break;
            case S_GETBYTE:
            case S_PUTBYTE:
                emit("shl $2,%%eax");
                codex(X_ADD);
                if (op == S_GETBYTE)
                    emit("movzb (%%eax),%%eax");
                else
                {
                    code(X_MOV, X_R, 1, X_P, sp - 3);
                    emit("mov %%cl,(%%eax)");
                    sp--;
                }
                break;
            case S_STIND:
                emit("mov %%eax,(,%%ecx,4)");
                break;
            case S_GOTO:
                codex(X_JMP);
                break;
            case S_JT:
            case S_JF:
                if (ro)
                {
                    emit("j%s %s", relstr[ro - S_EQ][op == S_JT], label(rdn()));
                    ro = 0;
                }
                else
                {
                    emit("orl %%eax,%%eax");
                    emit("j%s %s", op == S_JF ? "z" : "nz", label(rdn()));
                }
                break;
            case S_JUMP:
                emit("jmp %s", label(rdn()));
                break;
            case S_SWITCHON:
            {
                int n, d, l, i;
                n = rdn();
                d = rdn();
                l = --labno;
                defdata(S_DATALAB, l);
                for (i = 0; i < n; i++)
                {
                    defdata(S_ITEMN, rdn());
                    defdata(S_ITEML, rdn());
                }
                emit("mov $%s,%%edx", label(l));
                emit("mov $%d,%%ecx", n);
                emit("jecxz 2f");
                emit("1:cmp (%%edx),%%eax");
                emit("je 3f");
                emit("add $8,%%edx");
                emit("loop 1b");
                emit("2:jmp %s", label(d));
                emit("3:jmp *4(%%edx)");
            }
            break;
            case S_RES:
                emit("jmp %s", label(rdn()));
                break;
            case S_RSTACK:
                sn = rdn();
                ltype[0] = X_R;
                ldata[0] = 0;
                break;
            case S_FNAP:
            case S_RTAP:
                sn = rdn();
                code(X_LEA, X_R, 1, X_P, sn);
                codex(X_CALL);
                if (op == S_FNAP)
                {
                    ltype[0] = X_R;
                    ldata[0] = 0;
                }
                break;
            case S_FNRN:
            case S_RTRN:
                emit("mov %%ebp,%%ecx");
                emit("mov 4(%%ecx),%%ebp");
                emit("jmp *(%%ecx)");
                break;
            case S_ENDFOR:
                codex(X_CMP);
                emit("jle %s", label(rdn()));
                break;
            case S_BLAB:
            case S_LAB:
                codelab(rdn());
                break;
            case S_DATALAB:
            case S_ITEML:
            case S_ITEMN:
                defdata(op, rdn());
                break;
            case S_NEEDS:
            case S_SECTION:
            {
                int n, i;
                n = rdn();
                printf("//\t%s: ", op == S_NEEDS ? "NEEDS" : "SECTION");
                for (i = 0; i < n; i++)
                {
                    putchar(rdn());
                }
                putchar('\n');
            }
            break;
            case S_GLOBAL:
            {
                int n, x, i;
                emit("ret");
                emit(".data");
                for (i = 0; i < dt; i++)
                {
                    outdata(sdata[i][0], sdata[i][1]);
                }
                n = rdn();
                for (i = 0; i < n; i++)
                {
                    x = rdn();
                    emit(".global G%d", x);
                    emit(".equ G%d,%s", x, label(rdn()));
                }
            }
            return;
            case S_FINISH:
                emit("jmp finish");
                break;
            default:
                error("Unknown op %d", op);
        }
        if (op == S_GLOBAL)
        {
            break;
        }
        /* adjust stack pointer */
        sp = s2 & 2 ? sn : sp - s1;
        if (s2 & 1)
        {
            sp++;
        }
        /* adjust load stack pointer */
        if (s3 <= 7)
        {
            lp = s2 & 1;
        }
        else if (s3 == 8 && lp < 2)
        {
            lp++;
        }
    }
    return op;
}

static void
load(int t, int d)
{
    assert(lp >= 0 && lp <= 2);
    if (lp == 2)
        force(1);
    ltype[lp] = t;
    ldata[lp] = d;
}

static void
save(int k, int v)
{
    code(X_MOV, k, v, ltype[0], ldata[0]);
}

static void
force(int st)
{
    assert(lp >= 0 && lp <= 2);
    assert(st >= 0 && st <= 2);
    if (lp == st)
        return;
    if (lp == 0) {
        ltype[0] = X_R;
        ldata[0] = 0;
        code(X_MOV, ltype[0], ldata[0], X_P, sp - 1);
        lp = 1;
        if (lp == st)
            return;
    }
    assert(lp != 0);
    if (st == 2) {
        assert(ltype[0] == X_R && ldata[0] == 0);
        emit("mov %%eax,%%ecx");
        code(X_MOV, ltype[0], ldata[0], X_P, sp - 2);
        ltype[1] = X_R;
        ldata[1] = 1;
        lp = 2;
    } else
        do {
            loadreg(0, ltype[0] != X_N);
            code(X_MOV, X_P, sp - lp, ltype[0], ldata[0]);
            if (lp == 2) {
                ltype[0] = ltype[1];
                ldata[0] = ltype[1] == X_R ? 0 : ldata[1];
            }
        } while (--lp != st);
}

static void
loadreg(int i, int must)
{
    int t, p;

    t = ltype[i];
    if (t == X_R)
        return;
    p = t == X_LP || t == X_LG || t == X_LL;
    if (p || must) {
        code(p && t != X_LL ? X_LEA : X_MOV, X_R, i, t, ldata[i]);
        if (p)
            emit("shr $2,%%%s", reg[i]);
        ltype[i] = X_R;
        ldata[i] = i;
    }
}

static void
codex(int xi)
{
    code(xi, ltype[0], ldata[0], ltype[1], ldata[1]);
}

static void
code(int xi, ...)
{
    char buf[64], *s;
    int typ[2], dat[2];
    va_list ap;
    int cj, i1, na, x, i, t, d;

    va_start(ap, xi);
    x = xitab[xi];
    cj = x & XCJ;
    i1 = x & XI1 ? 1 : 0;
    na = x & XNA;
    for (i = 0; i < na; i++) {
        typ[i] = va_arg(ap, int);
        dat[i] = va_arg(ap, int);
    }
    s = buf;
    s += sprintf(s, xistr[xi]);
    for (i = na - 1; i >= i1; i--) {
        *s++ = i == na - 1 ? ' ' : ',';
        t = typ[i];
        d = dat[i];
        if (t <= 3) {
            if (cj)
                *s++ = '*';
        } else if (t != X_LP && t != X_LG && !cj)
            *s++ = '$';
        switch (t) {
        case X_R:
            sprintf(s, "%%%s", reg[d]);
            break;
        case X_P:
        case X_LP:
            sprintf(s, "%d(%%ebp)", d * WORDSZ);
            break;
        case X_G:
        case X_LG:
            sprintf(s, "%d(%%edi)", d * WORDSZ);
            break;
        case X_L:
        case X_LL:
            sprintf(s, "%s", label(d));
            break;
        case X_N:
            sprintf(s, "%d", d);
            break;
        }
        while (*s)
            s++;
    }
    va_end(ap);
    emit("%s", buf);
}

static void
defdata(int k, int v)
{
    if (dt >= SDSZ)
        error("Too many constants");
    sdata[dt][0] = k;
    sdata[dt][1] = v;
    dt++;
}

static void
outdata(int k, int n)
{
    switch (k) {
    case S_DATALAB:
        emit(".align 4");
        codelab(n);
        return;
    case S_ITEMN:
        emit(".long %d", n);
        return;
    case S_ITEML:
        emit(".long %s", label(n));
        return;
    case S_LSTR:
        emit(".byte %d", n);
        return;
    }
}

static void
codelab(int n)
{
    char buf[32];

    sprintf(buf, "%s:", label(n));
    emit(buf);
}

static void
emit(const char *fmt, ...)
{
    va_list ap;

    while (isupper(*fmt) || isdigit(*fmt) || *fmt == ':')
        putchar(*fmt++);
    if (*fmt) {
        putchar('\t');
        va_start(ap, fmt);
        vprintf(fmt, ap);
    }
    putchar('\n');
    va_end(ap);
}

static char *
label(int n)
{
    static char buf[32];

    sprintf(buf, "L%d", loff + n);
    return buf;
}

static int
rdop(int peek)
{
    static int got, op;

    if (!got)
        op = rdn();
    got = peek;
    return op;
}

static int
rdn(void)
{
    int neg, n;

    neg = n = 0;
    do
        ch = getchar();
    while (ch == ' ' || ch == '\n');
    if (ch == 'L')
        ch = getchar();
    else if (ch == '-') {
        neg = 1;
        ch = getchar();
    }
    while (isdigit(ch)) {
        n = n * 10 + ch - '0';
        ch = getchar();
    }
    return neg ? -n : n;
}

static void
error(const char *msg, ...)
{
    va_list ap;

    va_start(ap, msg);
    vfprintf(stderr, msg, ap);
    fputc('\n', stderr);
    va_end(ap);
    exit(1);
}

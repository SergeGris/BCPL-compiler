/* Copyright (c) 2012 Robert Nordier. All rights reserved. */

/* Patterns for peephole optimizer */

#include <stddef.h>

/* SWITCHON 0 */
static const char *const p00[] =
{
    "\tmovl @0,%eax\n",
    "\tmov @1,%edx\n",
    "\tmov $0,%ecx\n",
    "\tjecxz 2f\n",
    "1:\tcmp (%edx),%eax\n",
    "\tje 3f\n",
    "\tadd $8,%edx\n",
    "\tloop 1b\n",
    "2:\tjmp @2\n",
    "3:\tjmp *4(%edx)\n",
    NULL,
    "\tjmp @2\n",
    NULL
};
/* SWITCHON */
static const char *const p01[] =
{
    "\tjecxz 2f\n",
    NULL,
    NULL
};
/* EQ */
static const char *const p02[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tje @2\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tje @2\n",
    NULL
};
/* NE */
static const char *const p03[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tjne @2\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tjne @2\n",
    NULL
};
/* LS */
static const char *const p04[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tjl @2\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tjg @2\n",
    NULL
};
/* GR */
static const char *const p05[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tjg @2\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tjl @2\n",
    NULL
};
/* LE */
static const char *const p06[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tjle @2\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tjge @2\n",
    NULL
};
/* GE */
static const char *const p07[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tjge @2\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tjle @2\n",
    NULL
};
static const char *const p08[] =
{
    "\tmov (,%eax,4),%eax\n",
    "\tcmpl $@0,%eax\n",
    NULL,
    "\tcmpl $@0,(,%eax,4)\n",
    NULL
};
static const char *const p09[] =
{
    "\tmov (,%eax,4),%eax\n",
    "\tcmpl %@0,%eax\n",
    NULL,
    "\tcmpl %@0,(,%eax,4)\n",
    NULL
};
static const char *const p10[] =
{
    "\tmovl $2,%ecx\n",
    "\timull %ecx\n",
    NULL,
    "\tshll $1,%eax\n",
    NULL
};
static const char *const p11[] =
{
    "\tmovl @$0,%eax\n",
    "\t@1 %eax\n",
    "\tmovl %eax,@0\n",
    NULL,
    "\t@1 @0\n",
    NULL
};
static const char *const p16[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tsete %al\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tsete %al\n",
    NULL
};
/* NE */
static const char *const p17[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tsetne %al\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tsetne %al\n",
    NULL
};
/* LS */
static const char *const p18[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tsetl %al\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tsetg %al\n",
    NULL
};
/* GR */
static const char *const p19[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tsetg %al\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tsetl %al\n",
    NULL
};
/* LE */
static const char *const p20[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tsetle %al\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tsetge %al\n",
    NULL
};
/* GE */
static const char *const p21[] =
{
    "\tmovl $@0,%eax\n",
    "\tcmpl @$1,%eax\n",
    "\tsetge %al\n",
    NULL,
    "\tcmpl $@0,@1\n",
    "\tsetle %al\n",
    NULL
};
static const char *const p22[] =
{
    "\tmovl @0,%eax\n",
    "\taddl $1,%eax\n",
    "\tmovl %eax,@0\n",
    NULL,
    "\tincl @0\n",
    NULL
};
static const char *const p23[] =
{
    "\tmovl $1,%eax\n",
    "\taddl @0,%eax\n",
    "\tmovl %eax,@0\n",
    NULL,
    "\tincl @0\n",
    NULL
};
static const char *const p24[] =
{
    "\tmovl @0,%eax\n",
    "\taddl $-1,%eax\n",
    "\tmovl %eax,@0\n",
    NULL,
    "\tdecl @0\n",
    NULL
};
static const char *const p25[] =
{
    "\tmovl $-1,%eax\n",
    "\taddl @0,%eax\n",
    "\tmovl %eax,@0\n",
    NULL,
    "\tdecl @0\n",
    NULL
};
static const char *const p26[] =
{
    "\tmovl @0,%eax\n",
    "\tsubl $1,%eax\n",
    "\tmovl %eax,@0\n",
    NULL,
    "\tdecl @0\n",
    NULL
};
static const char *const p27[] =
{
    "\tmovl @0,%eax\n",
    "\tsubl $-1,%eax\n",
    "\tmovl %eax,@0\n",
    NULL,
    "\tincl @0\n",
    NULL
};
static const char *const p28[] =
{
    "\tmovl %@0,%eax\n",
    "\tcmpl @1,%eax\n",
    NULL,
    "\tcmpl @1,%@0\n",
    NULL
};
static const char *const p29[] =
{
    "\tmovl @$0,%eax\n",
    "\tcmpl $@1,%eax\n",
    NULL,
    "\tcmpl $@1,@0\n",
    NULL
};
static const char *const p30[] =
{
    "\tmovl @$0,%eax\n",
    "\tcmpl %@1,%eax\n",
    NULL,
    "\tcmpl %@1,@0\n",
    NULL
};
static const char *const p31[] =
{
    "\tmovl $1,@0\n",
    "\taddl @1,@0\n",
    NULL,
    "\tmovl @1,@0\n",
    "\tincl @0\n",
    NULL
};
static const char *const p32[] =
{
    "\tmovl $-1,@0\n",
    "\taddl @1,@0\n",
    NULL,
    "\tmovl @1,@0\n",
    "\tdecl @0\n",
    NULL
};
static const char *const p33[] =
{
    "\taddl $1,@0\n",
    NULL,
    "\tincl @0\n",
    NULL
};
static const char *const p34[] =
{
    "\taddl $-1,@0\n",
    NULL,
    "\tdecl @0\n",
    NULL
};
static const char *const p35[] =
{
    "\tsubl $1,@0\n",
    NULL,
    "\tdecl @0\n",
    NULL
};
static const char *const p36[] =
{
    "\tsubl $-1,@0\n",
    NULL,
    "\tincl @0\n",
    NULL
};
static const char *const p37[] =
{
    "\taddl $0,%eax\n",
    NULL,
    NULL
};
static const char *const p38[] =
{
    "\tmovl %eax,@0\n",
    "\tmovl @0,%eax\n",
    NULL,
    "\tmovl %eax,@0\n",
    NULL
};
static const char *const p39[] =
{
    "\tjmp L@0\n",
    "L@0:\n",
    NULL,
    "L@0:\n",
    NULL
};
static const char *const p40[] =
{
    "\tmovl $1,%ecx\n",
    "\tshll %cl,%eax\n",
    NULL,
    "\tshll $1,%eax\n",
    NULL
};
static const char *const p41[] =
{
    "\tmovl $1,%ecx\n",
    "\tshrl %cl,%eax\n",
    NULL,
    "\tshrl $1,%eax\n",
    NULL
};

const char *const *pat[] =
{
    p00, p01, p02, p03, p04, p05, p06, p07, p08, p09,
    p10, p11, p16, p17, p18, p19,
    p20, p21, p22, p23, p24, p25, p26, p27, p28, p29,
    p30, p31, p32, p33, p34, p35, p36, p37, p38, p39,
    p40, p41,
    NULL
};

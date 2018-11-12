/* Copyright (c) 2012 Robert Nordier.  All rights reserved. */

/* A peephole optimizer: inspired by copt by Christopher W. Fraser */

#include <ctype.h>
#include <stdio.h>

#define SZ 64  /* Input line size */
#define LN 16  /* Lines in buffer */

extern const char *const *pat[];

static char reg[10][SZ];

/* Match input */
static int match(const char *p, const char *s) {
    char *r;
    int c;

    do
    {
        c = *p++;
        if (c == '@')
        {
            while (!isdigit(*p))
            {
                if (*s == *p++)
                {
                    return -1;
                }
            }
            r = reg[*p++ - '0'];
            if (*r == 0)
            {
                while (*s && *s != *p)
                    *r++ = *s++;
                *r = 0;
            }
            else
            {
                do
                {
                    if (*r++ != *s++)
                    {
                        return -1;
                    }
                } while (*r);
            }
        }
        else if (*s++ != c)
        {
            return -1;
        }
    } while (c);
    return 0;
}
/* Generate output */
static void
gener(const char *p, char *s)
{
    const char *r;
    int c;

    do
    {
        c = *p++;
        if (c == '@' && isdigit(*p))
        {
            for (r = reg[*p++ - '0']; *r; r++)
            {
                *s++ = *r;
            }
        }
        else
        {
            *s++ = c;
        }
    } while (c);
}

int main(void) {
    char buf[LN][SZ];
    const char *const **pp, *const *p;
    int eof, lz, ln, i, j, k;

    for (eof = lz = ln = 0;; lz = lz + j & (LN - 1), ln -= j)
    {
        while (ln < LN && !eof)
        {
            if (!(eof = fgets(buf[lz + ln & (LN - 1)], SZ, stdin) == NULL))
            {
                ln++;
            }
        }
        if (ln == 0)
        {
            return 0;
        }
        for (pp = pat; p = *pp; pp++)
        {
            for (i = 0; i < 10; i++)
            {
                *reg[i] = 0;
            }
            for (j = 0, i = lz; p[j]; j++, i++)
            {
                if (j >= ln || match(p[j], buf[i & (LN - 1)]))
                {
                    break;
                }
            }
            if (p[j])
            {
                j = k = 1;
            }
            else
            {
                for (p += j + 1, k = 0, i = lz; p[k]; k++, i++)
                {
                    gener(p[k], buf[i & (LN - 1)]);
                }
                break;
            }
        }
        for (i = 0; i < k; i++)
        {
            fputs(buf[lz + i & (LN - 1)], stdout);
        }
    }
}

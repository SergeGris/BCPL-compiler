/* Copyright (c) 2012 Robert Nordier. All rights reserved. */

/* OCODE operators */
#define S_TRUE      4
#define S_FALSE     5
#define S_RV        8
#define S_FNAP      10
#define S_MULT      11
#define S_DIV       12
#define S_REM       13
#define S_PLUS      14
#define S_MINUS     15
#define S_QUERY     16
#define S_NEG       17
#define S_ABS       19
#define S_EQ        20
#define S_NE        21
#define S_LS        22
#define S_GR        23
#define S_LE        24
#define S_GE        25
#define S_NOT       30
#define S_LSHIFT    31
#define S_RSHIFT    32
#define S_LOGAND    33
#define S_LOGOR     34
#define S_EQV       35
#define S_NEQV      36
#define S_COND      37
#define S_LP        40
#define S_LG        41
#define S_LN        42
#define S_LSTR      43
#define S_LL        44
#define S_LLP       45
#define S_LLG       46
#define S_LLL       47
#define S_NEEDS     48
#define S_SECTION   49
#define S_RTAP      51
#define S_GOTO      52
#define S_RETURN    67
#define S_FINISH    68
#define S_SWITCHON  70
#define S_GLOBAL    76
#define S_SP        80
#define S_SG        81
#define S_SL        82
#define S_STIND     83
#define S_JUMP      85
#define S_JT        86
#define S_JF        87
#define S_ENDFOR    88
#define S_BLAB      89
#define S_LAB       90
#define S_STACK     91
#define S_STORE     92
#define S_RSTACK    93
#define S_ENTRY     94
#define S_SAVE      95
#define S_FNRN      96
#define S_RTRN      97
#define S_RES       98
#define S_RESLAB    99
#define S_DATALAB   100
#define S_ITEML     101
#define S_ITEMN     102
#define S_ENDPROC   103
#define S_END       104
#define S_GETBYTE   120
#define S_PUTBYTE   121

#define OPMAX       121

#define OPATTR      4

#define optab1(x) (optab[x][1])
#define optab2(x) (optab[x][2])
#define optab3(x) (optab[x][3])

extern const char optab[][OPATTR];

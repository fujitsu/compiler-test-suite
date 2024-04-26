#include <stdio.h>
#define TRUE     1
#define FALSE    0

#define ASFT2   FALSE

#define I8_CON 4611686018427387904
#define I4_CON 1073741824
#define I2_CON 16384
#define I1_CON 64
#define U8_CON 9223372036854775808
#define U4_CON 2147483648
#define U2_CON 32768
#define U1_CON 128

typedef int BOOL;

BOOL shftchk1(), shftchk2(), shftchk3(), shftchk4(),
     shftchk5(), shftchk6(), shftchk7(), shftchk8();
int main()
{
    int flag;

    flag = TRUE;

    if (shftchk1() != TRUE){
        printf("#1 NG.\n");
        flag = FALSE;
    }
    if (shftchk2() != TRUE){
        printf("#2 NG.\n");
        flag = FALSE;
    }
    if (shftchk3() != TRUE){
        printf("#3 NG.\n");
        flag = FALSE;
    }
    if (shftchk4() != TRUE){
        printf("#4 NG.\n");
        flag = FALSE;
    }
    if (shftchk5() != TRUE){
        printf("#5 NG.\n");
        flag = FALSE;
    }
    if (shftchk6() != TRUE){
        printf("#6 NG.\n");
        flag = FALSE;
    }
    if (shftchk7() != TRUE){
        printf("#7 NG.\n");
        flag = FALSE;
    }
    if (shftchk8() != TRUE){
        printf("#8 NG.\n");
        flag = FALSE;
    }

    if (flag == TRUE)
        printf("PASS.\n");
    else
        printf("NG.\n");
}


BOOL shftchk1()
{
    BOOL flag;
    int i;
    int bit;

#if ASFT2
    long long int lli;
#endif
    int      li;
    short si;
    signed char   c;
#if ASFT2
    unsigned long long int ulli;
#endif
    unsigned  int     uli;
    unsigned  short usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUE;
#if ASFT2
    lli = 1;
    lli = lli << (int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (int)(sizeof(c) * bit - 2);

#if ASFT2
    ulli = 1;
    ulli = ulli << (int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (int)(sizeof(uc) * bit - 1);

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shli error. :%d\n", lli );
        flag = FALSE;
    }
#endif
#if INT64
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shli error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != I2_CON){
        printf("si   shli error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != I1_CON){
        printf("c    shli error. :%d\n", c  );
        flag = FALSE;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shli error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
#if INT64
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shli error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != U2_CON){
        printf("usi  shli error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != U1_CON){
        printf("uc   shli error. :%d\n", uc );
        flag = FALSE;
    }
    return (flag);
}


BOOL shftchk2()
{
    BOOL flag;
    short shsi;
    int i;
    int bit;

#if ASFT2
    long long int lli;
#endif
    int      li;
    short si;
    signed char   c;
#if ASFT2
    unsigned long long int ulli;
#endif
    unsigned  int     uli;
    unsigned  short usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUE;
#if ASFT2
    lli = 1;
    lli = lli << (short int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (short )(sizeof(li) * bit - 2);

    si = 1;
    si = si << (short )(sizeof(si) * bit - 2);

    c = 1;
    c = c << (short )(sizeof(c) * bit - 2);

#if ASFT2
    ulli = 1;
    ulli = ulli << (short int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (short )(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (short )(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (short )(sizeof(uc) * bit - 1);

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shsi error. :%d\n", lli );
        flag = FALSE;
    }
#endif
#if INT64
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shsi error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != I2_CON){
        printf("si   shsi error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != I1_CON){
        printf("c    shsi error. :%d\n", c  );
        flag = FALSE;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shsi error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
#if INT64
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shsi error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != U2_CON){
        printf("usi  shsi error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != U1_CON){
        printf("uc   shsi error. :%d\n", uc );
        flag = FALSE;
    }
    return (flag);
}


BOOL shftchk3()
{
    BOOL flag;
    int i;
    int bit;

#if ASFT2
    long long int lli;
#endif
    int      li;
    short si;
    signed char   c;
#if ASFT2
    unsigned long long int ulli;
#endif
    unsigned  int     uli;
    unsigned  short usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUE;
#if ASFT2
    lli = 1;
    lli = lli << (signed char)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (signed char)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (signed char)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (signed char)(sizeof(c) * bit - 2);

#if ASFT2
    ulli = 1;
    ulli = ulli << (signed char)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (signed char)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (signed char)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (signed char)(sizeof(uc) * bit - 1);

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shc error. :%d\n", lli );
        flag = FALSE;
    }
#endif
#if INT64
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shc error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != I2_CON){
        printf("si   shc error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != I1_CON){
        printf("c    shc error. :%d\n", c  );
        flag = FALSE;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shc error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
#if INT64
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shc error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != U2_CON){
        printf("usi  shc error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != U1_CON){
        printf("uc   shc error. :%d\n", uc );
        flag = FALSE;
    }
    return (flag);
}


BOOL shftchk4()
{
    BOOL flag;
    int i;
    int bit;

#if ASFT2
    long long int lli;
#endif
    int      li;
    short si;
    signed char   c;
#if ASFT2
    unsigned long long int ulli;
#endif
    unsigned  int     uli;
    unsigned  short usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUE;
#if ASFT2
    lli = 1;
    lli = lli << (long long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (long long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (long long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (long long int)(sizeof(c) * bit - 2);

#if ASFT2
    ulli = 1;
    ulli = ulli << (long long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (long long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (long long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (long long int)(sizeof(uc) * bit - 1);

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shlli error. :%d\n", lli );
        flag = FALSE;
    }
#endif
#if INT64
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shlli error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != I2_CON){
        printf("si   shlli error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != I1_CON){
        printf("c    shlli error. :%d\n", c  );
        flag = FALSE;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shlli error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
#if INT64
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shlli error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != U2_CON){
        printf("usi  shlli error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != U1_CON){
        printf("uc   shlli error. :%d\n", uc );
        flag = FALSE;
    }
    return (flag);
}


BOOL shftchk5()
{
    BOOL flag;
    int i;
    int bit;

#if ASFT2
    long long int lli;
#endif
    int      li;
    short si;
    signed char   c;
#if ASFT2
    unsigned long long int ulli;
#endif
    unsigned  int     uli;
    unsigned  short usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUE;
#if ASFT2
    lli = 1;
    lli = lli << (unsigned long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned long int)(sizeof(c) * bit - 2);

#if ASFT2
    ulli = 1;
    ulli = ulli << (unsigned long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned long int)(sizeof(uc) * bit - 1);

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shuli error. :%d\n", lli );
        flag = FALSE;
    }
#endif
#if INT64
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shuli error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != I2_CON){
        printf("si   shuli error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != I1_CON){
        printf("c    shuli error. :%d\n", c  );
        flag = FALSE;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shuli error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
#if INT64
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shuli error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != U2_CON){
        printf("usi  shuli error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != U1_CON){
        printf("uc   shuli error. :%d\n", uc );
        flag = FALSE;
    }
    return (flag);
}


BOOL shftchk6()
{
    BOOL flag;
    int i;
    int bit;

#if ASFT2
    long long int lli;
#endif
    int      li;
    short si;
    signed char   c;
#if ASFT2
    unsigned long long int ulli;
#endif
    unsigned  int     uli;
    unsigned  short usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUE;
#if ASFT2
    lli = 1;
    lli = lli << (unsigned short )(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned short )(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned short )(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned short )(sizeof(c) * bit - 2);

#if ASFT2
    ulli = 1;
    ulli = ulli << (unsigned short int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned short )(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned short )(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned short )(sizeof(uc) * bit - 1);

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shusi error. :%d\n", lli );
        flag = FALSE;
    }
#endif
#if INT64
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shusi error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != I2_CON){
        printf("si   shusi error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != I1_CON){
        printf("c    shusi error. :%d\n", c  );
        flag = FALSE;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shusi error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
#if INT64
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shusi error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != U2_CON){
        printf("usi  shusi error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != U1_CON){
        printf("uc   shusi error. :%d\n", uc );
        flag = FALSE;
    }
    return (flag);
}


BOOL shftchk7()
{
    BOOL flag;
    int i;
    int bit;

#if ASFT2
    long long int lli;
    unsigned long long int ulli;
#endif
    int      li;
    short si;
    signed char   c;
    unsigned  int     uli;
    unsigned  short usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUE;
#if ASFT2
    lli = 1;
    lli = lli << (unsigned char)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned char)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned char)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned char)(sizeof(c) * bit - 2);

#if ASFT2
    ulli = 1;
    ulli = ulli << (unsigned char)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned char)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned char)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned char)(sizeof(uc) * bit - 1);

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shuc error. :%d\n", lli );
        flag = FALSE;
    }
#endif
#if INT64
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shuc error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != I2_CON){
        printf("si   shuc error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != I1_CON){
        printf("c    shuc error. :%d\n", c  );
        flag = FALSE;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shuc error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
#if INT64
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shuc error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != U2_CON){
        printf("usi  shuc error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != U1_CON){
        printf("uc   shuc error. :%d\n", uc );
        flag = FALSE;
    }
    return (flag);
}


BOOL shftchk8()
{
    BOOL flag;
    int i;
    int bit;

#if ASFT2
    long long int lli;
    unsigned long long int ulli;
#endif
    int      li;
    short si;
    signed char   c;
    unsigned  int     uli;
    unsigned  short usi;
    unsigned  char         uc;

    bit = 8;
    flag = TRUE;
#if ASFT2
    lli = 1;
    lli = lli << (unsigned long long int)(sizeof(lli) * bit - 2);
#endif

    li = 1;
    li = li << (unsigned long long int)(sizeof(li) * bit - 2);

    si = 1;
    si = si << (unsigned long long int)(sizeof(si) * bit - 2);

    c = 1;
    c = c << (unsigned long long int)(sizeof(c) * bit - 2);

#if ASFT2
    ulli = 1;
    ulli = ulli << (unsigned long long int)(sizeof(ulli) * bit - 1);
#endif

    uli = 1;
    uli = uli << (unsigned long long int)(sizeof(uli) * bit - 1);

    usi = 1;
    usi = usi << (unsigned long long int)(sizeof(usi) * bit - 1);

    uc = 1;
    uc = uc << (unsigned long long int)(sizeof(uc) * bit - 1);

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shulli error. :%d\n", lli );
        flag = FALSE;
    }
#endif
#if INT64
    if (li   != I8_CON){
#else
    if (li   != I4_CON){
#endif
        printf("li   shulli error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != I2_CON){
        printf("si   shulli error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != I1_CON){
        printf("c    shulli error. :%d\n", c  );
        flag = FALSE;
    }
#if ASFT2
    if (ulli != U8_CON){
        printf("ulli shulli error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
#if INT64
    if (uli  != U8_CON){
#else
    if (uli  != U4_CON){
#endif
        printf("uli  shulli error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != U2_CON){
        printf("usi  shulli error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != U1_CON){
        printf("uc   shulli error. :%d\n", uc );
        flag = FALSE;
    }
    return (flag);
}

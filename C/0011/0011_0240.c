#include <stdio.h>
#define TRUE     1
#define FALSE    0

#define ASFT2    FALSE

#define I8_CON 4611686018427387904
#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
#define I4_CON 0x4000000000000000
#else
#define I4_CON 1073741824
#endif
#define I2_CON 16384
#define I1_CON 64
#define U8_CON 9223372036854775808
#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
#define U4_CON 0x8000000000000000
#else
#define U4_CON 2147483648
#endif
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
        printf("#1 NG.\n\n");
        flag = FALSE;
    }
    if (shftchk2() != TRUE){
        printf("#2 NG.\n\n");
        flag = FALSE;
    }
    if (shftchk3() != TRUE){
        printf("#3 NG.\n\n");
        flag = FALSE;
    }
    if (shftchk4() != TRUE){
        printf("#4 NG.\n\n");
        flag = FALSE;
    }
    if (shftchk5() != TRUE){
        printf("#5 NG.\n\n");
        flag = FALSE;
    }
    if (shftchk6() != TRUE){
        printf("#6 NG.\n\n");
        flag = FALSE;
    }
    if (shftchk7() != TRUE){
        printf("#7 NG.\n\n");
        flag = FALSE;
    }
    if (shftchk8() != TRUE){
        printf("#8 NG.\n\n");
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
    long int shli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUE;
#if ASFT2
    lli = 1;
    shli = sizeof(lli) * 8 - 2;
    lli = lli << shli;
#endif

    li = 1;
    shli = sizeof(li) * 8 - 2;
    li = li << shli;

    si = 1;
    shli = sizeof(si) * 8 - 2;
    si = si << shli;

    c = 1;
    shli = sizeof(c) * 8 - 2;
    c = c << shli;

#if ASFT2
    ulli = 1;
    shli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shli;
#endif

    uli = 1;
    shli = sizeof(uli) * 8 - 1;
    uli = uli << shli;

    usi = 1;
    shli = sizeof(usi) * 8 - 1;
    usi = usi << shli;

    uc = 1;
    shli = sizeof(uc) * 8 - 1;
    uc = uc << shli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shli error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shli error. :%ld\n", li );
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
    if (uli  != U4_CON){
        printf("uli  shli error. :%lu\n", uli );
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
    short int shsi;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUE;
#if ASFT2
    lli = 1;
    shsi = sizeof(lli) * 8 - 2;
    lli = lli << shsi;
#endif

    li = 1;
    shsi = sizeof(li) * 8 - 2;
    li = li << shsi;

    si = 1;
    shsi = sizeof(si) * 8 - 2;
    si = si << shsi;

    c = 1;
    shsi = sizeof(c) * 8 - 2;
    c = c << shsi;

#if ASFT2
    ulli = 1;
    shsi = sizeof(ulli) * 8 - 1;
    ulli = ulli << shsi;
#endif

    uli = 1;
    shsi = sizeof(uli) * 8 - 1;
    uli = uli << shsi;

    usi = 1;
    shsi = sizeof(usi) * 8 - 1;
    usi = usi << shsi;

    uc = 1;
    shsi = sizeof(uc) * 8 - 1;
    uc = uc << shsi;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shsi error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shsi error. :%ld\n", li );
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
    if (uli  != U4_CON){
        printf("uli  shsi error. :%lu\n", uli );
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
    signed char shc;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUE;
#if ASFT2
    lli = 1;
    shc = sizeof(lli) * 8 - 2;
    lli = lli << shc;
#endif

    li = 1;
    shc = sizeof(li) * 8 - 2;
    li = li << shc;

    si = 1;
    shc = sizeof(si) * 8 - 2;
    si = si << shc;

    c = 1;
    shc = sizeof(c) * 8 - 2;
    c = c << shc;

#if ASFT2
    ulli = 1;
    shc = sizeof(ulli) * 8 - 1;
    ulli = ulli << shc;
#endif

    uli = 1;
    shc = sizeof(uli) * 8 - 1;
    uli = uli << shc;

    usi = 1;
    shc = sizeof(usi) * 8 - 1;
    usi = usi << shc;

    uc = 1;
    shc = sizeof(uc) * 8 - 1;
    uc = uc << shc;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shc error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shc error. :%ld\n", li );
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
    if (uli  != U4_CON){
        printf("uli  shc error. :%lu\n", uli );
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
    long long int shlli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUE;
#if ASFT2
    lli = 1;
    shlli = sizeof(lli) * 8 - 2;
    lli = lli << shlli;
#endif

    li = 1;
    shlli = sizeof(li) * 8 - 2;
    li = li << shlli;

    si = 1;
    shlli = sizeof(si) * 8 - 2;
    si = si << shlli;

    c = 1;
    shlli = sizeof(c) * 8 - 2;
    c = c << shlli;

#if ASFT2
    ulli = 1;
    shlli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shlli;
#endif

    uli = 1;
    shlli = sizeof(uli) * 8 - 1;
    uli = uli << shlli;

    usi = 1;
    shlli = sizeof(usi) * 8 - 1;
    usi = usi << shlli;

    uc = 1;
    shlli = sizeof(uc) * 8 - 1;
    uc = uc << shlli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shlli error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shlli error. :%ld\n", li );
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
    if (uli  != U4_CON){
        printf("uli  shlli error. :%lu\n", uli );
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
    signed char shlli;
    unsigned long int shuli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char          c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUE;
#if ASFT2
    lli = 1;
    shuli = sizeof(lli) * 8 - 2;
    lli = lli << shuli;
#endif

    li = 1;
    shuli = sizeof(li) * 8 - 2;
    li = li << shuli;

    si = 1;
    shuli = sizeof(si) * 8 - 2;
    si = si << shuli;

    c = 1;
    shuli = sizeof(c) * 8 - 2;
    c = c << shuli;

#if ASFT2
    ulli = 1;
    shuli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shuli;
#endif

    uli = 1;
    shuli = sizeof(uli) * 8 - 1;
    uli = uli << shuli;

    usi = 1;
    shuli = sizeof(usi) * 8 - 1;
    usi = usi << shuli;

    uc = 1;
    shuli = sizeof(uc) * 8 - 1;
    uc = uc << shuli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shuli error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shuli error. :%ld\n", li );
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
    if (uli  != U4_CON){
        printf("uli  shuli error. :%lu\n", uli );
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
    unsigned short int shusi;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUE;
#if ASFT2
    lli = 1;
    shusi = sizeof(lli) * 8 - 2;
    lli = lli << shusi;
#endif

    li = 1;
    shusi = sizeof(li) * 8 - 2;
    li = li << shusi;

    si = 1;
    shusi = sizeof(si) * 8 - 2;
    si = si << shusi;

    c = 1;
    shusi = sizeof(c) * 8 - 2;
    c = c << shusi;

#if ASFT2
    ulli = 1;
    shusi = sizeof(ulli) * 8 - 1;
    ulli = ulli << shusi;
#endif

    uli = 1;
    shusi = sizeof(uli) * 8 - 1;
    uli = uli << shusi;

    usi = 1;
    shusi = sizeof(usi) * 8 - 1;
    usi = usi << shusi;

    uc = 1;
    shusi = sizeof(uc) * 8 - 1;
    uc = uc << shusi;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shusi error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shusi error. :%ld\n", li );
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
    if (uli  != U4_CON){
        printf("uli  shusi error. :%lu\n", uli );
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
    unsigned char shuc;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUE;
#if ASFT2
    lli = 1;
    shuc = sizeof(lli) * 8 - 2;
    lli = lli << shuc;
#endif

    li = 1;
    shuc = sizeof(li) * 8 - 2;
    li = li << shuc;

    si = 1;
    shuc = sizeof(si) * 8 - 2;
    si = si << shuc;

    c = 1;
    shuc = sizeof(c) * 8 - 2;
    c = c << shuc;

#if ASFT2
    ulli = 1;
    shuc = sizeof(ulli) * 8 - 1;
    ulli = ulli << shuc;
#endif

    uli = 1;
    shuc = sizeof(uli) * 8 - 1;
    uli = uli << shuc;

    usi = 1;
    shuc = sizeof(usi) * 8 - 1;
    usi = usi << shuc;

    uc = 1;
    shuc = sizeof(uc) * 8 - 1;
    uc = uc << shuc;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shuc error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shuc error. :%ld\n", li );
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
    if (uli  != U4_CON){
        printf("uli  shuc error. :%lu\n", uli );
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
    unsigned long long int shulli;
    int i;

    long long int lli;
    long int      li;
    short int     si;
    signed char   c;
    unsigned long long int ulli;
    unsigned long int      uli;
    unsigned short int     usi;
    unsigned char          uc;

    flag = TRUE;
#if ASFT2
    lli = 1;
    shulli = sizeof(lli) * 8 - 2;
    lli = lli << shulli;
#endif

    li = 1;
    shulli = sizeof(li) * 8 - 2;
    li = li << shulli;

    si = 1;
    shulli = sizeof(si) * 8 - 2;
    si = si << shulli;

    c = 1;
    shulli = sizeof(c) * 8 - 2;
    c = c << shulli;

#if ASFT2
    ulli = 1;
    shulli = sizeof(ulli) * 8 - 1;
    ulli = ulli << shulli;
#endif

    uli = 1;
    shulli = sizeof(uli) * 8 - 1;
    uli = uli << shulli;

    usi = 1;
    shulli = sizeof(usi) * 8 - 1;
    usi = usi << shulli;

    uc = 1;
    shulli = sizeof(uc) * 8 - 1;
    uc = uc << shulli;

#if ASFT2
    if (lli  != I8_CON){
        printf("lli  shulli error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != I4_CON){
        printf("li   shulli error. :%ld\n", li );
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
    if (uli  != U4_CON){
        printf("uli  shulli error. :%lu\n", uli );
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

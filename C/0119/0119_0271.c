#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <stdio.h>
#define TRUE     1
#define FALSE    0

typedef int BOOL;

#define WLONG_INT TRUE
int main()
{
    BOOL flag;
    int i;
#if WLONG_INT
    long long int lli;
#endif
    long int      li;
    short int     si;
    signed char   c;
#if WLONG_INT
    unsigned long long int ulli;
#endif
    unsigned  long int     uli;
    unsigned  short int    usi;
    unsigned  char         uc;

    flag = TRUE;
#if WLONG_INT
    lli = 1;
    lli = lli << 1;
#endif

    li = 1;
    li = li << 1;

    si = 1;
    si = si << 1;

    c = 1;
    c = c << 1;

#if WLONG_INT
    ulli = 1;
    ulli = ulli << 1;
#endif

    uli = 1;
    uli = uli << 1;

    usi = 1;
    usi = usi << 1;

    uc = 1;
    uc = uc << 1;

#if WLONG_INT
    if (lli  != 2){
        printf("lli  shift error. :%d\n", lli );
        flag = FALSE;
    }
#endif
    if (li   != 2){
        printf("li   shift error. :%d\n", li );
        flag = FALSE;
    }
    if (si   != 2){
        printf("si   shift error. :%d\n", si );
        flag = FALSE;
    }
    if (c    != 2){
        printf("c    shift error. :%d\n", c  );
        flag = FALSE;
    }
#if WLONG_INT
    if (ulli != 2){
        printf("ulli shift error. :%d\n", ulli);
        flag = FALSE;
    }
#endif
    if (uli  != 2){
        printf("uli  shift error. :%d\n", uli );
        flag = FALSE;
    }
    if (usi  != 2){
        printf("usi  shift error. :%d\n", usi );
        flag = FALSE;
    }
    if (uc   != 2){
        printf("uc   shift error. :%d\n", uc );
        flag = FALSE;
    }
    if (flag != TRUE)
        printf("SCQIH08 NG.\n");
    else
        printf("SCQIH08 PASS.\n");
exit (0);
}

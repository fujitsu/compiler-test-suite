#include <stdio.h>

#ifdef NO_LONG_DOUBLE
typedef double r16;
#else
typedef long double r16;
#endif

struct tag4096 {                     
    long int          dummy[1024];  
};
struct tagi2 {
    short int         i2[2047];     
};
struct tagr4 {
    float             r4[1023];     
};
struct tagr8 {
    double            r8[511];      
};
struct tagrq {
    r16               rq[255];      
};

int sub(r16            prq,     double         pr8,
        float          pr4,     short int      pi2,
        long int       pdummy)
{
    return pi2+pr4+pr8+prq+pdummy;
}
int main()
{
    struct tagrq    st5;
    struct tagr8    st4;
    struct tagr4    st3;
    struct tagi2    st2;
    struct tag4096  st1;
    int             cal, ans = 34;

    printf(" ---- start ----\n");

    st5.rq[0] = 16.0;
    st4.r8[0] = 8.0;
    st3.r4[0] = 4.0;
    st2.i2[0] = 2;
    st1.dummy[0] = 4;
    cal = sub (st5.rq[0], st4.r8[0], st3.r4[0],
               st2.i2[0], st1.dummy[0]);
    if (cal == ans)
        printf("     *** ok ***\n");
    else {
        printf("     ??? ng ???\n");
        printf("      cal = %d\n", cal);
        printf("      ans = %d\n", ans);
    }

    printf(" ----  end  ----\n");
}

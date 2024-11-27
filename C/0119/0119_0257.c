#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag4096 {                      
    long int          dummy[1024];   
};
struct tagi1 {
    char              i1[4095];       
};
struct tagi2 {
    short int         i2[2047];       
};
struct tagi4 {
    long int          i4[1023];       
};
struct tagi8 {
    long long int     i8[511];        
};

int sub(
        long int       pdummy,  char           pi1,
        short int      pi2,     long int       pi4,
        long long int  pi8)
{
    return pi1+pi2+pi4+pi8+pdummy;
}
int main()
{
    struct tagi8    st5;
    struct tagi4    st4;
    struct tagi2    st3;
    struct tagi1    st2;
    struct tag4096  st1;
    int             cal, ans = 19;

    printf(" ---- scpa027 start ----\n");

    st5.i8[0] = 8;
    st4.i4[0] = 4;
    st3.i2[0] = 2;
    st2.i1[0] = 1;
    st1.dummy[0] = 4;
    cal = sub (st1.dummy[0],  st2.i1[0], st3.i2[0],
               st4.i4[0], st5.i8[0]);
    if (cal == ans)
        printf("     *** ok ***\n");
    else {
        printf("     ??? ng ???\n");
        printf("      cal = %d\n", cal);
        printf("      ans = %d\n", ans);
    }

    printf(" ---- scpa027  end  ----\n");
exit (0);
}

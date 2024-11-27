#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag1 {
    long double ld;
};

long int sub(float  fl, struct tag1 st, long int li[]);

long int     cal, ans = 6;
int main()
{
    long int           i, lia1[5];
    float              fl1;
    struct tag1        t1_st1;

    printf("---- scpa008 start ---- \n");

    fl1 = 1.0;    t1_st1.ld = 2.0;    lia1[0] = 3;

    cal = sub(fl1, t1_st1, lia1);

    if (cal == ans)
        printf ("     ***  ok  *** \n");
    else {
        printf ("     ???  ng  ??? \n");
        printf ("       ans = %d\n", ans);
        printf ("       cal = %d\n", cal);
    }

    printf("---- scpa008  end  ---- \n");
exit (0);
}

long int sub(
float         a,
struct tag1   b,
long int      c[5])
{
    return (long int)(a+b.ld+c[0]);
}

#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
struct tag1 {
    long int  t1_lia1[1500];
    long int t1_li1;
};
struct tag2 {
    long int t2_li1;
};
int main()
{
    short int   si1 = 2;
    long int    li1 = 4;
    struct tag1
                st1, *stp1 = &st1;
    long int    i, j, ans = 75806;
    struct tag2
                cal, sub();

    printf("---- scpa004 start ---- \n");

    for(i=0; i<15; i++)
        for(j=0; j<100; j++)
            st1.t1_lia1[i*100+j] = j+1;
    st1.t1_li1 = 50;

    cal = sub(si1, st1, stp1->t1_li1, li1);

    if (cal.t2_li1 == ans)
        printf ("   ***  ok  *** \n");
    else {
        printf ("   ???  ng  ??? \n");
        printf ("     ans = %d\n", ans);
        printf ("     cal = %d\n", cal.t2_li1);
    }

    printf("---- scpa004  end  ---- \n");
exit (0);
}

struct tag2 sub(psi1, pst1, pli1, pli2)
short int   psi1;
struct tag1 pst1;
long int    pli1, pli2;
{
    long int    i;
    struct tag2 sum;

    sum.t2_li1 = psi1 + pli1 + pli2;
    for (i=0; i<1500; i++)
        sum.t2_li1 = sum.t2_li1 + pst1.t1_lia1[i];
    return sum;
}

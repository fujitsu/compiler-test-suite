#include  <stdio.h>

struct tag1 {
    char       t1_ch1;
    short int  t1_si1;
};
int main()
{
    static char        ch1 = 1;
    static short int   si1 = 2;
    static long int    li1 = 4;
    static long int    lia1[5] = { 10, 20, 30, 40, 50 };
    static long long int
                       ll1 = 8;
    static struct tag1 st1 = { 100, 200 };
    static struct tag1 *stp1 = &st1;
    long int    cal, ans = 765;
    int sub(char pch1, short int psi1, long int pli1, long long int pll1, struct tag1 pst1, struct tag1 pst2, long int plia1[]);

    printf("---- start ---- \n");

    cal = sub(ch1, si1, li1, ll1, st1, *stp1, lia1);

    if (cal == ans)
        printf ("   ***  ok  *** \n");
    else {
        printf ("   ???  ng  ??? \n");
        printf ("     ans = %ld\n", ans);
        printf ("     cal = %ld\n", cal);
    }

    printf("----  end  ---- \n");
}

int sub(char pch1, short int psi1, long int pli1, long long int pll1, struct tag1 pst1, struct tag1 pst2, long int plia1[])
{
    long int    i, sum;

    sum = pch1 + psi1 + pli1 + pll1 +
          pst1.t1_ch1 + pst1.t1_si1 + pst2.t1_ch1 + pst2.t1_si1;
    for (i=0; i<5; i++)
        sum = sum+plia1[i];
    return sum;
}

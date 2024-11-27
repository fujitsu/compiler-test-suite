#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#define abs(x) ((x<0)?-(x):x)

double sqrt( double x )
{
    double ans1, ans2;

    if (x==0.0) return 0.0;
    ans1 = x;
    do {
        ans2 = ans1;
        ans1 = (ans1+x/ans2)/2.0;
    } while( (ans1-ans2)!=0 );
    return ans1;
}

double pi()
{
    double r0, r1, pi0, pi1, n, f;

    n = 2.0;   f = 4.0;   r1 = 2.0;   pi1 = 2.0;
    do {
        pi0 = pi1;
        r0  = r1;
        n   = n*2.0;
        f   = 2-sqrt(4.0-f);
    pi1 = sqrt(f)*n/2.0;
    } while( r0 >= (r1=abs(pi1-pi0)) );
    return pi0;
}
int main()
{
    int i, ng=0;
    double pai, ans_pai = 3.141593;
    double sqroot[10], ans_sqroot[10] = {
        1.000000, 1.414214, 1.732051, 2.000000, 2.236068,
        2.449490, 2.645751, 2.828427, 3.000000, 3.162278 };

    printf(" ---- scpa024 start ----\n");

    for(i=1; i<=10; i++)
        sqroot[i-1] = sqrt((double)i);
    pai = pi();

    for(i=0; i<10; i++)
        if (1e-5 < abs(sqroot[i]-ans_sqroot[i])) {
            printf("   ????  ng  ????\n");
            printf("     root %d = %e\n", i+1, sqroot[i]);
            ng = 1;
        }
    if (1e-5 < abs(pai-ans_pai)) {
        printf("   ????  ng  ????\n");
        printf("     pai = %e\n", pai);
        ng = 1;
    }
    if (ng != 1)
        printf("     ****  ok  ****\n");
        printf("     pai = %s%e\n", "",pai);

    printf(" ---- scpa024  end  ----\n");
exit (0);
}

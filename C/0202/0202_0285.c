#include <stdio.h>
#include <math.h>
int main()
{
  int i, n;
  {
    double x, bj;

    for (n=20;n<=30;n=n+10)
      for (i=0;i<=10;i++) {
        x = (double)i;
        bj = jn( n, x );
        printf("x = %4.2f   n = %i   bj = %e\n", x, n, bj);
      }
  }
}

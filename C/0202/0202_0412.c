#include <stdio.h>
#include <math.h>
int main()
{
  int i, n;
  {
    double x, by;

    for (n=20;n<=30;n=n+10)
      for (i=1;i<=10;i++) {
        x = (double)i;
        
        by = yn(n, x);
        printf("x = %4.2f   n = %i   by = %e\n", x, n, by);
      }
  }

}

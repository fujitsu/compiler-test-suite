#include <stdio.h>
#include <math.h>
int main()
{
  int i;
  {
    double x, bj;

    for (i=0;i<=100;i++) {
      x = (double)i;
      bj = j1(x);
      printf("x = %4.2f   bj = %f\n", x, bj);
    }
  }
}

#include <stdio.h>
#include <complex.h>

void sub(double _Complex a)
{
  double b;

  b = cabs(a);

  if ((b - 50.089919) < 0.00001 ){
    printf("OK\n");
  }else{
    printf("NG (%f)\n",b);
  }
  return;
}
int main()
{
  double _Complex a;
  
  a = -50.000 + -3.000i;

  sub (a);
}

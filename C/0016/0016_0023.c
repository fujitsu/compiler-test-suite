#include <stdio.h>
#include <complex.h>

void sub(double _Complex a, double _Complex b)
{
  double _Complex c;

  c = a - b;

  if (creal(c) == 40.0 && cimag(c) == 1.0){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(c),cimag(c));
  }
  return;
}
int main()
{
  double _Complex a;
  double _Complex b;
  
  a = 50.000 + 3.000i;
  b = 10.000 + 2.000i;

  sub (a,b);
}

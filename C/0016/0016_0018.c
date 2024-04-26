#include <stdio.h>
#include <complex.h>

void sub(double _Complex a, double b)
{
  double _Complex c;

  c = a + b;

  if (creal(c) == 60.0 && cimag(c) == 3.0){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(c),cimag(c));
  }
  return;
}
int main()
{
  double _Complex a;
  double b;
  
  a = 50.000 + 3.000i;
  b = 10.000;

  sub (a,b);
}

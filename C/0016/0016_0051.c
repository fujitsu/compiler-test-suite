#include <stdio.h>
#include <complex.h>

void sub(double _Complex a)
{
  double _Complex b;

  b = conj(a);

  if (creal(b) == 50.0 && cimag(b) == -3.0){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(b),cimag(b));
  }
  return;
}
int main()
{
  double _Complex a;
  
  a = 50.000 + 3.000i;

  sub (a);
}

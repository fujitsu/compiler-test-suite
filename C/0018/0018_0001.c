#include <stdio.h>
#include <complex.h>

double _Complex foo(double _Complex a)
{
  double b = 10.000;

  return (a + b);
}
int main() {
  double _Complex c;

  c = foo(50.000 + 3.000i);

  if (creal(c) == 60.0 && cimag(c) == 3.0){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(c),cimag(c));
  }
}

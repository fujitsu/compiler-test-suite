#include <stdio.h>
#include <complex.h>

double _Complex sub(double _Complex a, double b)
{
  return a + b;
}
int main()
{
  double _Complex a, c;
  double b;
  
  a = 50.000 + 3.000i;
  b = 10.000;

  c = sub (a,b);
  if (creal(c) == 60.0 && cimag(c) == 3.0){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(c),cimag(c));
  }
}

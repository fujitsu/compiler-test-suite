#include <stdio.h>
#include <complex.h>

double _Complex sub(double _Complex a, double _Complex b)
{
  return a + b;
}
int main()
{
  double _Complex a, b, c;
  
  a = 50.000 + 3.000i;
  b = 10.000 + 2.000i;

  c = sub (a,b);
  if (creal(c) == 60.0 && cimag(c) == 5.0){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(c),cimag(c));
  }
}

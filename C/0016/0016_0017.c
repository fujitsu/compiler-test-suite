#include <stdio.h>
#include <complex.h>
int main()
{
  double _Complex a,b,c;
  
  a = 50.000 + 4.000i;
  b = 25.000 + 5.000i;

  c = a / b;
  if ((creal(c) - 1.953846) < 0.00001 && (cimag(c) == -0.230769) < 0.00001){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(c),cimag(c));
  }
}

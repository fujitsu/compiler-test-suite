#include <stdio.h>
#include <complex.h>
int main()
{
  double _Complex a,b,c;
  
  a = 50.000 + 4.000i;
  b = 25.000 + 2.000i;

  c = a - b;
  if (creal(c) == 25.0 && cimag(c) == 2.0){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(c),cimag(c));
  }
}

#include <stdio.h>
#include <complex.h>
#include <math.h>
int main()
{
  float _Complex a,c;
  float b;
  const double ABSOLUTE_ERROR = 0.000001;
  
  a = 50.000f + 3.000fi;
  b = 10.000f;

  c = a / b;
  if ((fabs((double)(crealf(c) - 5.0f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(c) - 0.3f)) < ABSOLUTE_ERROR)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",creal(c),cimag(c));
  }
}

#include <stdio.h>
#include <complex.h>

void sub(float _Complex a)
{
  float b;

  b = cabsf(a);

  if ((b - 50.089919f) < 0.00001 ){
    printf("OK\n");
  }else{
    printf("NG (%f)\n",b);
  }
  return;
}
int main()
{
  float _Complex a;
  
  a = -50.000f + -3.000fi;

  sub (a);
}

#include <stdio.h>
#include <complex.h>

void sub(float _Complex a)
{
  float _Complex b;

  b = conjf(a);

  if (crealf(b) == 50.0f && cimagf(b) == -3.0f){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(b),cimagf(b));
  }
  return;
}
int main()
{
  float _Complex a;
  
  a = 50.000f + 3.000fi;

  sub (a);
}

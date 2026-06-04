#include <stdio.h>
#include <complex.h>

void sub(float _Complex a)
{
  if(crealf(a)==10.0 && cimagf(a)==0.0)
    printf("  OK\n");
  else
    printf("  NG\n");
}

int main()
{
  float _Complex a = 10.0;
  int k = 0;
  sub(k==0 ? a : a);
  return 0;
}

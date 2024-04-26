#include <stdio.h>
#include <complex.h>

void sub(float _Complex a, float _Complex b)
{
  float _Complex c;

  c = a / b;

  if ((crealf(c) - 4.865385f) < 0.00001 && (cimagf(c) - -0.673077f) < 0.00001) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(c),cimagf(c));
  }
  return;
}
int main()
{
  float _Complex a;
  float _Complex b;
  
  a = 50.000f + 3.000fi;
  b = 10.000f + 2.000fi;

  sub (a,b);
}

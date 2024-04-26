#include <stdio.h>
#include <complex.h>

void sub(long double _Complex a, long double _Complex b)
{
  long double _Complex c;

  c = a / b;

  printf("c=%.4Lf, %.4Lf I\n",creall(c),cimagl(c));
}
int main()
{
  long double _Complex a;
  long double _Complex b;
  
  a = 50.000L + 3.000Li;
  b = 10.000L + 2.000Li;

  sub (a,b);
}

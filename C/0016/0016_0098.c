#include <stdio.h>
#include <complex.h>
int main()
{
  long double _Complex a,c;
  long double b;
  
  a = 50.000L + 3.000Li;
  b = 10.000L;

  c = a / b;
  printf("c=%.4Lf, %.4Lf I\n",creall(c),cimagl(c));

}

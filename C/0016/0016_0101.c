#include <stdio.h>
#include <complex.h>
int main()
{
  long double _Complex a,b,c;
  
  a = 50.000L + 4.000Li;
  b = 25.000L + 2.000Li;

  c = a * b;
  printf("c=%.4Lf, %.4Lf I\n",creall(c),cimagl(c));

}

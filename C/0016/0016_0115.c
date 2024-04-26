/* The pattern of (complex + complex = complex) .
 * The return value of the function is complex type.
 */

#include <stdio.h>
#include <complex.h>

long double _Complex sub(long double _Complex a, long double _Complex b)
{
  return a + b;
}
int main()
{
  long double _Complex a, b, c;
  
  a = 50.000L + 3.000Li;
  b = 10.000L + 2.000Li;

  c = sub (a,b);

  printf("c=%.4Lf, %.4Lf I\n",creall(c),cimagl(c));

}

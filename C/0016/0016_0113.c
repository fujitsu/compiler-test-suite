/* The pattern of (complex * long double = complex) .
 * The return value of the function is complex type.
 */

#include <stdio.h>
#include <complex.h>

long double _Complex sub(long double _Complex a, long double b)
{
  return a * b;
}
int main()
{
  long double _Complex a, c;
  long double b;
  
  a = 50.000L + 3.000Li;
  b = 10.000L;

  c = sub (a,b);

  printf("c=%.4Lf, %.4Lf I\n",creall(c),cimagl(c));

}

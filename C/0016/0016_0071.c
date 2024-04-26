/* The pattern of (float / complex = complex) .
 * The return value of the function is complex type.
 */

#include <stdio.h>
#include <complex.h>
#include <math.h>

float _Complex sub(float _Complex a, float b)
{
  return a / b;
}
int main()
{
  float _Complex a, c;
  float b;
  const double ABSOLUTE_ERROR = 0.00001;
  
  a = 50.000f + 3.000fi;
  b = 10.000f;

  c = sub (a,b);

  if ((fabs((double)(crealf(c) - 5.0f)) < ABSOLUTE_ERROR) &&
      (fabs((double)(cimagf(c) - 0.3f)) < ABSOLUTE_ERROR)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(c),cimagf(c));
  }
}

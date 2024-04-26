/* The pattern of (complex + complex = complex) .
 * The return value of the function is complex type.
 */

#include <stdio.h>
#include <complex.h>

float _Complex sub(float _Complex a, float _Complex b)
{
  return a + b;
}
int main()
{
  float _Complex a, b, c;
  
  a = 50.000f + 3.000fi;
  b = 10.000f + 2.000fi;

  c = sub (a,b);

  if (crealf(c) == 60.0f && cimagf(c) == 5.0f){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(c),cimagf(c));
  }
}

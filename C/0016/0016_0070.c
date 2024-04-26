/* The pattern of (float * complex = complex) .
 * The return value of the function is complex type.
 */

#include <stdio.h>
#include <complex.h>

float _Complex sub(float _Complex a, float b)
{
  return a * b;
}
int main()
{
  float _Complex a, c;
  float b;
  
  a = 50.000f + 3.000fi;
  b = 10.000f;

  c = sub (a,b);

  if (crealf(c) == 500.0f && cimagf(c) == 30.0f){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(c),cimagf(c));
  }
}

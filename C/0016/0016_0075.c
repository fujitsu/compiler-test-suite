/* The pattern of (complex / complex = complex) .
 * The return value of the function is complex type.
 */

#include <stdio.h>
#include <complex.h>

float _Complex sub(float _Complex a, float _Complex b)
{
  return a / b;
}
int main()
{
  float _Complex a, b, c;
  
  a = 50.000f + 3.000fi;
  b = 10.000f + 2.000fi;

  c = sub (a,b);

  if ((crealf(c) - 4.865385f) < 0.00001 && (cimagf(c) - -0.673077f) < 0.00001){
    printf("OK\n");
  }else{
    printf("NG (%f,%f)\n",crealf(c),cimagf(c));
  }
}

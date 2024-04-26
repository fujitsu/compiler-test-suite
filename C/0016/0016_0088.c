/* The pattern of (complex[] + complex[] = complex[]) .
 * The return value of the function is a pointer of complex type.
 */

#include <stdio.h>
#include <complex.h>

#define elm_num 5

float _Complex* sub(float _Complex a[], float _Complex b[])
{
  static float _Complex f[elm_num];
  int j;

  for (j = 0; j < elm_num; j++) {
    f[j] = a[j] + b[j];
  }
  return f;
}
int main()
{
  float _Complex a[elm_num], b[elm_num], *c;
  float d,e;
  int i;

  d = 10.000f;
  e = 15.000f;
  for (i = 0; i < elm_num; i++){
    a[i] = d + 3.000fi;
    b[i] = e + 1.500fi;
    d += 2.000f;
    e += 4.500f;
  }
  
  c = sub(a,b);

  if ((crealf(*c) == 25.0f && cimagf(*c) == 4.5f) &&
      (crealf(*(c+1)) == 31.5f && cimagf(*(c+1)) == 4.5f) &&
      (crealf(*(c+2)) == 38.0f && cimagf(*(c+2)) == 4.5f) &&
      (crealf(*(c+3)) == 44.5f && cimagf(*(c+3)) == 4.5f) &&
      (crealf(*(c+4)) == 51.0f && cimagf(*(c+4)) == 4.5f)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f),(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",
	   crealf(*c),cimagf(*c),crealf(*(c+1)),cimagf(*(c+1)),crealf(*(c+2)),
	   cimagf(*(c+2)),crealf(*(c+3)),cimagf(*(c+3)),crealf(*(c+4)),cimagf(*(c+4)));
  }
}

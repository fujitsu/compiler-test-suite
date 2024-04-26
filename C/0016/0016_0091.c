/* The pattern of (complex[] / complex[] = complex[]) .
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
    f[j] = a[j] / b[j];
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

  if (((crealf(*c) - 0.679868f) < 0.00001 && 
       (cimagf(*c) - 0.132013) < 0.00001) &&
      ((crealf(*(c+1)) - 0.623529f) < 0.00001 && 
       (cimagf(*(c+1)) - 0.105882f) < 0.00001) &&
      ((crealf(*(c+2)) - 0.588846f) < 0.00001 &&
       (cimagf(*(c+2)) - 0.088197f) < 0.00001) &&
      ((crealf(*(c+3)) - 0.565378f) < 0.00001 && 
       (cimagf(*(c+3)) - 0.075506f) < 0.00001) &&
      ((crealf(*(c+4)) - 0.548454f) < 0.00001 && 
       (cimagf(*(c+4)) - 0.065979f) < 0.00001)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f),(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",
	   crealf(*c),cimagf(*c),crealf(*(c+1)),cimagf(*(c+1)),crealf(*(c+2)),
	   cimagf(*(c+2)),crealf(*(c+3)),cimagf(*(c+3)),crealf(*(c+4)),cimagf(*(c+4)));
  }
}

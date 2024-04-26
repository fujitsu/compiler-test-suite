/* The pattern of (float - complex[] = complex[]) .
 * The return value of the function is a pointer of complex type.
 */

#include <stdio.h>
#include <complex.h>

#define elm_num 5

float _Complex* sub(float _Complex a[], float d)
{
  static float _Complex e[elm_num];
  int j;

  for (j = 0; j < elm_num; j++) {
    e[j] = a[j] - d;
  }
  return e;
}
int main()
{
  float _Complex a[elm_num], *b;
  float c,d;
  int i;

  c = 10.000f;
  d = 15.000f;
  for (i = 0; i < elm_num; i++){
    a[i] = c + 3.000fi;
    c += 2.000f;
  }
  
  b = sub(a,d);

  if ((crealf(*b) == -5.0f && cimagf(*b) == 3.0f) &&
      (crealf(*(b+1)) == -3.0f && cimagf(*(b+1)) == 3.0f) &&
      (crealf(*(b+2)) == -1.0f && cimagf(*(b+2)) == 3.0f) &&
      (crealf(*(b+3)) == 1.0f && cimagf(*(b+3)) == 3.0f) &&
      (crealf(*(b+4)) == 3.0f && cimagf(*(b+4)) == 3.0f)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f),(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",
	   crealf(*b),cimagf(*b),crealf(*(b+1)),cimagf(*(b+1)),crealf(*(b+2)),
	   cimagf(*(b+2)),crealf(*(b+3)),cimagf(*(b+3)),crealf(*(b+4)),cimagf(*(b+4)));
  }
}

// The pattern of (float / complex[] = complex[]) .

#include <stdio.h>
#include <complex.h>
#include <math.h>

void sub(float _Complex a[], float c)
{
  float _Complex d[5];
  const double ABSOLUTE_ERROR = 0.000001;
  int j;

  for (j = 0; j < 5; j++) {
    d[j] = a[j] / c;
  }

  if (((fabs((double)(crealf(d[0]) - 1.0f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(d[0]) - 0.3f)) < ABSOLUTE_ERROR)) &&
      ((fabs((double)(crealf(d[1]) - 1.2f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(d[1]) - 0.3f)) < ABSOLUTE_ERROR)) &&
      ((fabs((double)(crealf(d[2]) - 1.4f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(d[2]) - 0.3f)) < ABSOLUTE_ERROR)) &&
      ((fabs((double)(crealf(d[3]) - 1.6f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(d[3]) - 0.3f)) < ABSOLUTE_ERROR)) &&
      ((fabs((double)(crealf(d[4]) - 1.8f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(d[4]) - 0.3f)) < ABSOLUTE_ERROR))) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f),(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",
	   crealf(d[0]),cimagf(d[0]),crealf(d[1]),cimagf(d[1]),crealf(d[2]),cimagf(d[2]),
	   crealf(d[3]),cimagf(d[3]),crealf(d[4]),cimagf(d[4]));
  }
  return;
}
int main()
{
  float _Complex a[5];
  float b,c;
  int i;

  b = 10.000f;
  for (i = 0; i < 5; i++){
    a[i] = b + 3.000fi;
    b += 2.000f;
  }
  c = 10.000f;
  
  sub (a,c);
}

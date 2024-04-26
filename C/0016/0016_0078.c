// The pattern of (float * complex[] = complex[]) .

#include <stdio.h>
#include <complex.h>

void sub(float _Complex a[], float c)
{
  float _Complex d[5];
  int j;

  for (j = 0; j < 5; j++) {
    d[j] = a[j] * c;
  }

  if ((crealf(d[0]) == 100.0f && cimagf(d[0]) == 30.0f) &&
      (crealf(d[1]) == 120.0f && cimagf(d[1]) == 30.0f) &&
      (crealf(d[2]) == 140.0f && cimagf(d[2]) == 30.0f) &&
      (crealf(d[3]) == 160.0f && cimagf(d[3]) == 30.0f) &&
      (crealf(d[4]) == 180.0f && cimagf(d[4]) == 30.0f)) {
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

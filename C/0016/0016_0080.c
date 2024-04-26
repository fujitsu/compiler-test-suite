// The pattern of (complex[] + complex[] = complex[]) .

#include <stdio.h>
#include <complex.h>

#define elm_num 5

void sub(float _Complex a[], float _Complex b[])
{
  float _Complex e[elm_num];
  int j;

  for (j = 0; j < elm_num; j++) {
    e[j] = a[j] + b[j];
  }

  if ((crealf(e[0]) == 70.0f && cimagf(e[0]) == 12.0f) &&
      (crealf(e[1]) == 76.0f && cimagf(e[1]) == 12.0f) &&
      (crealf(e[2]) == 82.0f && cimagf(e[2]) == 12.0f) &&
      (crealf(e[3]) == 88.0f && cimagf(e[3]) == 12.0f) &&
      (crealf(e[4]) == 94.0f && cimagf(e[4]) == 12.0f)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f),(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",
	   crealf(e[0]),cimagf(e[0]),crealf(e[1]),cimagf(e[1]),crealf(e[2]),cimagf(e[2]),
	   crealf(e[3]),cimagf(e[3]),crealf(e[4]),cimagf(e[4]));
  }
  return;
}
int main()
{
  float _Complex a[elm_num], b[elm_num];
  float c,d;
  int i;

  c = 50.000f;
  d = 20.000f;
  for (i = 0; i < elm_num; i++){
    a[i] = c + 7.000fi;
    b[i] = d + 5.000fi;
    c += 4.000f;
    d += 2.000f;
  }
  
  sub (a,b);
}

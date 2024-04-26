// The pattern of (double - complex[] = complex[]) .

#include <stdio.h>
#include <complex.h>

void sub(double _Complex a[], double c)
{
  double _Complex d[5];
  int j;

  for (j = 0; j < 5; j++) {
    d[j] = a[j] - c;
  }
  if ((creal(d[0]) == 0.0 && cimag(d[0]) == 3.0) &&
      (creal(d[1]) == 2.0 && cimag(d[1]) == 3.0) &&
      (creal(d[2]) == 4.0 && cimag(d[2]) == 3.0) &&
      (creal(d[3]) == 6.0 && cimag(d[3]) == 3.0) &&
      (creal(d[4]) == 8.0 && cimag(d[4]) == 3.0)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f),(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",
	   creal(d[0]),cimag(d[0]),creal(d[1]),cimag(d[1]),creal(d[2]),cimag(d[2]),
	   creal(d[3]),cimag(d[3]),creal(d[4]),cimag(d[4]));
  }
  return;
}
int main()
{
  double _Complex a[5];
  double b,c;
  int i;

  b = 10.000;
  for (i = 0; i < 5; i++){
    a[i] = b + 3.000i;
    b += 2.000;
  }
  c = 10.000;
  
  sub (a,c);
}

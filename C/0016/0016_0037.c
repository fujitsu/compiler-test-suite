// The pattern of (double / complex[] = complex[]) .

#include <stdio.h>
#include <complex.h>
#include <math.h>

void sub(double _Complex a[], double c)
{
  double _Complex d[5];
  const double ABSOLUTE_ERROR = 0.000001;
  int j;

  for (j = 0; j < 5; j++) {
    d[j] = a[j] / c;
  }

  if (((fabs(creal(d[0]) - 1.0) < ABSOLUTE_ERROR) && (fabs(cimag(d[0]) - 0.3) < ABSOLUTE_ERROR)) &&
      ((fabs(creal(d[1]) - 1.2)	< ABSOLUTE_ERROR) && (fabs(cimag(d[1]) - 0.3) < ABSOLUTE_ERROR)) &&
      ((fabs(creal(d[2]) - 1.4)	< ABSOLUTE_ERROR) && (fabs(cimag(d[2]) - 0.3) < ABSOLUTE_ERROR)) &&
      ((fabs(creal(d[3]) - 1.6)	< ABSOLUTE_ERROR) && (fabs(cimag(d[3]) - 0.3) < ABSOLUTE_ERROR)) &&
      ((fabs(creal(d[4]) - 1.8)	< ABSOLUTE_ERROR) && (fabs(cimag(d[4]) - 0.3) < ABSOLUTE_ERROR))) {
    printf("OK\n");
  }else{
    printf("NG (%lf,%lf),(%lf,%lf),(%lf,%lf),(%lf,%lf),(%lf,%lf)\n",
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

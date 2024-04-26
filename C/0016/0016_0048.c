/* The pattern of (complex[] * complex[] = complex[]) .
 * The return value of the function is a pointer of complex type.
 */

#include <stdio.h>
#include <complex.h>

#define elm_num 5

double _Complex* sub(double _Complex a[], double _Complex b[])
{
  static double _Complex f[elm_num];
  int j;

  for (j = 0; j < elm_num; j++) {
    f[j] = a[j] * b[j];
  }
  return f;
}
int main()
{
  double _Complex a[elm_num], b[elm_num], *c;
  double d,e;
  int i;

  d = 10.000;
  e = 15.000;
  for (i = 0; i < elm_num; i++){
    a[i] = d + 3.000i;
    b[i] = e + 1.500i;
    d += 2.000;
    e += 4.500;
  }
  
  c = sub(a,b);

  if ((creal(*c) == 145.5 && cimag(*c) == 60.0) &&
      (creal(*(c+1)) == 229.5 && cimag(*(c+1)) == 76.5) &&
      (creal(*(c+2)) == 331.5 && cimag(*(c+2)) == 93.0) &&
      (creal(*(c+3)) == 451.5 && cimag(*(c+3)) == 109.5) &&
      (creal(*(c+4)) == 589.5 && cimag(*(c+4)) == 126.0)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f),(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",
	   creal(*c),cimag(*c),creal(*(c+1)),cimag(*(c+1)),creal(*(c+2)),cimag(*(c+2)),
	   creal(*(c+3)),cimag(*(c+3)),creal(*(c+4)),cimag(*(c+4)));
  }
}

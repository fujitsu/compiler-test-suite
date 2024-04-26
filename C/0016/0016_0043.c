/* The pattern of (double - complex[] = complex[]) .
 * The return value of the function is a pointer of complex type.
 */

#include <stdio.h>
#include <complex.h>

#define elm_num 5

double _Complex* sub(double _Complex a[], double d)
{
  static double _Complex e[elm_num];
  int j;

  for (j = 0; j < elm_num; j++) {
    e[j] = a[j] - d;
  }
  return e;
}
int main()
{
  double _Complex a[elm_num], *b;
  double c,d;
  int i;

  c = 10.000;
  d = 15.000;
  for (i = 0; i < elm_num; i++){
    a[i] = c + 3.000i;
    c += 2.000;
  }
  
  b = sub(a,d);

  if ((creal(*b) == -5.0 && cimag(*b) == 3.0) &&
      (creal(*(b+1)) == -3.0 && cimag(*(b+1)) == 3.0) &&
      (creal(*(b+2)) == -1.0 && cimag(*(b+2)) == 3.0) &&
      (creal(*(b+3)) == 1.0 && cimag(*(b+3)) == 3.0) &&
      (creal(*(b+4)) == 3.0 && cimag(*(b+4)) == 3.0)) {
    printf("OK\n");
  }else{
    printf("NG (%f,%f),(%f,%f),(%f,%f),(%f,%f),(%f,%f)\n",
	   creal(*b),cimag(*b),creal(*(b+1)),cimag(*(b+1)),creal(*(b+2)),cimag(*(b+2)),
	   creal(*(b+3)),cimag(*(b+3)),creal(*(b+4)),cimag(*(b+4)));
  }
}

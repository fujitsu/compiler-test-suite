/* The pattern of (complex[] + complex[] = complex[]) .
 * The return value of the function is a pointer of complex type.
 */

#include <stdio.h>
#include <complex.h>

#define elm_num 5

long double _Complex* sub(long double _Complex a[], long double _Complex b[])
{
  static long double _Complex f[elm_num];
  int j;

  for (j = 0; j < elm_num; j++) {
    f[j] = a[j] + b[j];
  }
  return f;
}
int main()
{
  long double _Complex a[elm_num], b[elm_num], *c;
  long double d,e;
  int i;

  d = 10.000L;
  e = 15.000L;
  for (i = 0; i < elm_num; i++){
    a[i] = d + 3.000Li;
    b[i] = e + 1.500Li;
    d += 2.000L;
    e += 4.500L;
  }
  
  c = sub(a,b);

  for (i = 0; i < elm_num; i++,c++){
    printf("c=%.4Lf, %.4Lf I\n",creall(*c),cimagl(*c));
  }
}

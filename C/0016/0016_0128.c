/* The pattern of (complex[] - long double = complex[]) .
 * The return value of the function is a pointer of complex type.
 */

#include <stdio.h>
#include <complex.h>

#define elm_num 5

long double _Complex* sub(long double _Complex a[], long double d)
{
  static long double _Complex e[elm_num];
  int j;

  for (j = 0; j < elm_num; j++) {
    e[j] = a[j] - d;
  }
  return e;
}
int main()
{
  long double _Complex a[elm_num], *b;
  long double c,d;
  int i;

  c = 10.000L;
  d = 15.000L;
  for (i = 0; i < elm_num; i++){
    a[i] = c + 3.000Li;
    c += 2.000L;
  }
  
  b = sub(a,d);

  for (i = 0; i < elm_num; i++,b++){
    printf("b=%.4Lf, %.4Lf I\n",creall(*b),cimagl(*b));
  }
}

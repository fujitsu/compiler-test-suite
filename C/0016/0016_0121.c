#include <stdio.h>
#include <complex.h>

void sub(long double _Complex a[], long double c)
{
  long double _Complex d[5];
  int j;

  for (j = 0; j < 5; j++) {
    d[j] = a[j] * c;
    printf("d=%.4Lf, %.4Lf I\n",creall(d[j]),cimagl(d[j]));
  }
}
int main()
{
  long double _Complex a[5];
  long double b,c;
  int i;

  b = 10.000L;
  for (i = 0; i < 5; i++){
    a[i] = b + 3.000Li;
    b += 2.000L;
  }
  c = 10.000L;
  
  sub (a,c);
}

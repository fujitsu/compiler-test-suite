#include <stdio.h>
#include <complex.h>

#define elm_num 5

void sub(long double _Complex a[], long double _Complex b[])
{
  long double _Complex e[elm_num];
  int j;

  for (j = 0; j < elm_num; j++) {
    e[j] = a[j] - b[j];
    printf("e=%.4Lf, %.4Lf I\n",creall(e[j]),cimagl(e[j]));
  }
}
int main()
{
  long double _Complex a[elm_num], b[elm_num];
  long double c,d;
  int i;

  c = 50.000L;
  d = 20.000L;
  for (i = 0; i < elm_num; i++){
    a[i] = c + 7.000Li;
    b[i] = d + 5.000Li;
    c += 4.000L;
    d += 2.000L;
  }
  
  sub (a,b);
}


#include <stdio.h>

#define loop_num 1000
#define Correct_answer01 1200
#define Correct_answer02 1900

void sub01(double *a, double *b, int *e, int *f, int *g, int n, int k)
{
  int i;
  for (i=0; i<n; i=i+k) {
    a[e[f[g[i]]]] = a[e[f[g[i]]]] + b[e[f[g[i]]]];
  }
  return;
}

void sub02(double *a, double *b, double *c, double *d, int *e, int *f, int *g, int n, int k)
{
  int i;
  for (i=0; i<n; i=i+k) {
    a[e[f[g[i]]]] = a[e[f[g[i]]]] + b[e[f[g[i]]]] + c[e[i]] + d[i];
  }
  return;
}

int main()
{
  double a[loop_num],b[loop_num];
  double a2[loop_num],b2[loop_num],c2[loop_num],d2[loop_num];
  int e[loop_num],f[loop_num],g[loop_num];
  int i,result01,result02;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0;
    b[i] = 2.0;
    a2[i] = 1.0;
    b2[i] = 2.0;
    c2[i] = 3.0;
    d2[i] = 4.0;
    e[i] = i;
    f[i] = i;
    g[i] = i;
  }

  sub01(a,b,e,f,g,loop_num,10);
  sub02(a2,b2,c2,d2,e,f,g,loop_num,10);

  result01 = 0;
  result02 = 0;
  for (i=0; i<loop_num; i++) {
    result01 += a[i];
    result02 += a2[i];
  }
  
  if (result01 == Correct_answer01) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result01);
  }
  if (result02 == Correct_answer02) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result02);
  }

  return 0;
}

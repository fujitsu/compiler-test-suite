#include <stdio.h>


#define N    30
#define M     5
#define ANS 177

static void set_array();
static void print_array();
int main()
{
  int i, j;
  double a[N],b[N];
  float  f1,f2,f3,f4,f_val;
  double d1,d2,d3,d4,d_val;
  long double l1,l2,l3,l4,l_val;
  double sum;

  f1 = f2 = f3 = f4 = f_val = 0.0F;
  d1 = d2 = d3 = d4 = d_val = 0.0;
  l1 = l2 = l3 = l4 = l_val = 0.0L;

  set_array(a,b);

  for (i=0; i<N; i++) {
    f1 = (float)(a[i] + b[i]);
    f2 = (float)(a[i] - b[i]);
    a[i] = (double)(f3 - f1) * 1.0;
    b[i] = (double)(f4 - f2) * 1.0;
    f3 = (float)(b[i] + a[i]);
    f4 = (float)(b[i] - a[i]);
    f_val = f_val + (double)(f1 + f2 + f3 + f4)/(double)N;
  }

  set_array(a,b);
  for (i=0; i<N; i++) {
    d1 = a[i] + b[i];
    d2 = a[i] - b[i];
    a[i] = (d3 - d1) * 1.0;
    b[i] = (d4 - d2) * 1.0;
    d3 = b[i] + a[i];
    d4 = b[i] - a[i];
    d_val = d_val + (d1 + d2 + d3 + d4)/(double)N;
  }

  
  set_array(a,b);
  for (i=0; i<N; i++) {
    l1 = (long double)(a[i] + b[i]);
    l2 = (long double)(a[i] - b[i]);
    a[i] = (double)(l3 - l1) * 1.0;
    b[i] = (double)(l4 - l2) * 1.0;
    l3 = (long double)(b[i] + a[i]);
    l4 = (long double)(b[i] - a[i]);
    l_val = l_val + (double)(l1 + l2 + l3 + l4)/(double)N;
  }

  while (f_val > 100.0) {
    f_val = f_val / (float)N;
  }
  while (d_val > 100.0) {
    d_val = d_val / (double)N;
  }
  while (l_val > 100.0) {
    l_val = l_val / (long double)N;
  }

  sum = (double)f_val + d_val + (double)l_val;

  if ((int)sum == ANS)
    printf("OK\n");
  else
    printf("NG\n");
}

static void set_array(a,b)
     double a[N],b[N];
{
  int i, j;

  for (i=0; i<N; i++) {
    a[i] = 0.0;
    b[i] = 0.0;
  }

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      a[j] = a[i] + (double)(i / (j + 1));
      b[i] = b[j] + (double)(j / (i + 1));
    }
  }
}

static void print_array(a,b)
     double a[N],b[N];
{
  int i;

  for (i=0; i<N; i++) {
    printf("a[%d] = %lf\n",i,a[i]);
    printf("b[%d] = %lf\n",i,b[i]);
  }
}


#include <stdio.h>

#define N 10

float vfptrans(int *a)
{
  int k;
  float f[N];

  for (k=0; k<N; ++k) {
    if (a[k]>0) {
      f[k] = 2.0;
    }
  }
  return f[0];
}

#define ANS  2.00000
#define PERMISSIBLE 0.00001
#define GET_ABS(a) (((a)>0) ? (a) : -(a))
int main(void)
{
  float x[N], f;
  int k;
  
  for (k=0; k<N; ++k) {
    x[k] = 1.0;
  }
  f = vfptrans((int *)x);
  if (GET_ABS(f-ANS)<=PERMISSIBLE) {
    printf("ok\n");
  } else {
    printf("ng: %f\n", f);
  }
}



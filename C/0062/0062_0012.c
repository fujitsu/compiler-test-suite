#include <stdio.h>
#define N 100

void vgather_type(volatile double * restrict a, double * restrict b, volatile long long int * restrict u, long long int * restrict uu)
{
  int i;
  for (i=0; i<N; ++i) {
    u[i] = i;
    uu[i] = i*i;
    a[i] = (double)(u[i]+uu[i]) + b[i];
  }
}

void vscather_type(volatile double * restrict a, double * restrict b, volatile long long int * restrict u, long long int * restrict uu)
{
  int i;
  for (i=0; i<N; ++i) {
    a[i] = b[i]+1.0;
    u[i] = (long long int)a[i] + uu[i];
  }
}

static void init_r8_array(double * restrict a, double data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static void init_i8_array(long long int * restrict a, long long int data){
  int i;
  for (i=0; i<N; ++i) {
    a[i] = data;
  }
}

static double r8sum(double * restrict a) {
  int i;
  double ans;
  ans = 0.0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

static long long int i8sum(long long int * restrict a) {
  int i;
  long long int ans;
  ans = 0;
  for (i=0; i<N; ++i) {
    ans += a[i];
  }
  return ans;
}

int main(void) {
  double a[N];
  double b[N];
  long long int u[N];
  long long int uu[N];

  init_r8_array(a, 0.0);
  init_r8_array(b, 1.0);
  init_i8_array(u, 0);
  init_i8_array(uu, 1);
  vgather_type((volatile double *)a,b,(volatile long long int *)u,uu);
  if ((long long int)r8sum(a) == 333400) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", (int)r8sum(a));
  }

  init_r8_array(a, 0.0);
  init_r8_array(b, 1.0);
  init_i8_array(u, 0);
  init_i8_array(uu, 1);
  vscather_type((volatile double *)a,b,(volatile long long int *)u,uu);
  if (i8sum(u) == 300) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n", i8sum(u));
  }
}

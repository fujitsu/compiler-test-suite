#include <stdio.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void foo(double * restrict a, double * restrict res1, double * restrict res2, 
	 int k, int m, int n) {
  int i;

  for(i = 0; i < n; ++i) {
    if (k > m) {
      res1[i] = a[k];
    }
  }

  for(i = 0; i < n; ++i) {
    if (k > m) {
      res2[i] = a[k];
    }
  }
}

void init(double * a, double * res1, double * res2, double * ans) {
  int i;
  for (i = 0; i < N; i++) {
    res1[i] = (double)i;
    res2[i] = (double)i;
    ans[i] = (double)i;
  }
  for (i = 0; i < 300; i++) {
    a[i] = (double)i*i;
  }
}

int main() {
  int i;
  double a[300], ans[N];
  double res1[N], res2[N];
  int k,m;
  k = 100;
  m = 200;

  init(a, res1, res2, ans);
  foo(a,res1,res2,k,m,N);

  for (i = 0; i < N; i++) {
    if (res2[i] != ans[i] || res2[i] != ans[i]) {
      PRINT_NG;
    }
  }  
  PRINT_OK;
  return 0;
}

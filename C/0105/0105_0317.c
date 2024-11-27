
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


void foo(double * restrict a, double * restrict res1, int k, int m, int n) {
  int i;
  for(i = 0; i < n; ++i) {
    if (k < m) {
      res1[i] = a[k];    
    }
  }
}

void init(double * a, double * ans) {
  int i;
  for (i = 0; i < N; i++) {
    ans[i] = (double)10;
  }
  for (i = 0; i < 200; i++) {
    a[i] = (double)200;
  }

  a[100] = (double)10;
}

int main() {
  int i;
  double a[200], ans[N];
  double res1[N];
  int k,m;
  k = 100;
  m = 200;

  init(a,ans);
  foo(a,res1,k,m,N);

  for (i = 0; i < N; i++) {
    if (ans[i] != res1[i]) {
      PRINT_NG;
    }
  }  
  PRINT_OK;
  return 0;
}

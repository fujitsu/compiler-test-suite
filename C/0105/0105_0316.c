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

void foo(double * restrict a, double * restrict b, int * restrict m,  double * restrict res1, double * restrict res2) {
  int i;

  for(i = 0; i < N; ++i) {
    if (m[i] > 0) { 
      res1[i] = a[i];    
      res2[i] = b[i] + a[i]; 
    } else {
      res2[i] = 0;
    }
  }
}

void init(int * m, double * a, double * b, double * ans) {
  int i;
  for (i = 0; i < N; i++) {
    m[i] = 0;
    ans[i] = 0.0;
    a[i] = (double)i;
    b[i] = (double)i;
  }
  for (i = 0; i < N; i+=2) {
    m[i] = 1.0;
    ans[i] = a[i]+b[i];
  }
}

int main() {
  int i;
  int m[N];
  double a[N], b[N], ans[N];
  double res1[N], res2[N];
  init(m, a, b, ans);
  foo(a,b,m,res1,res2);

  for (i = 0; i < N; i++) {
    if (ans[i] != res2[i]) {
      PRINT_NG;
    }
  }  
  PRINT_OK;
  return 0;
}

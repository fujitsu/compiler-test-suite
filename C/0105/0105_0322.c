#include <math.h>
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

void foo(double * restrict a, double * restrict b, double * restrict c, double * restrict d,  int * restrict m, int k, int n) {
  int i;

  for(i = 1; i < n; i++) {
    if (m[i] > k) {
      a[i] = a[i] - b[k]; 
    } 
    d[i] = d[i-1] + a[i];           
  }

}

void init(int * m, double * a, double * b, double * c, double * d, double * ans) {
  int i,j;
  for (i = 0; i < N; i++) {
    a[i] = i;
    b[i] = i;
    c[i] = i;
    d[i] = i;
    m[i] = i;
    ans[i] = i;
  }
  for (i = 1; i < N; i++) {
    ans[i] = ans[i-1] + a[i];
  }  
}

int main() {
  int i;
  int m[N];
  double a[N], b[N], ans[N];
  double c[N], d[N];
  int k;
  k = 100;

  init(m, a, b, c,d, ans);
  foo(a,b,c,d,m,k,N);

  for (i = 0; i < N; i++) {
    if (d[i] != ans[i]) {
      PRINT_NG;
    }
  }  
  PRINT_OK;
  return 0;
}

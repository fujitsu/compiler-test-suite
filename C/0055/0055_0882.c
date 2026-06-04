
#include <stdio.h>

#if defined(__GNUC__) 

#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#define MAINF MAIN__
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main
#endif

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void part_simd(int * restrict a, int * restrict b, int * restrict c, int * restrict d,  int * restrict m, int k, int n) {
  int i;

  for(i = 1; i < n; i++) {
    if (m[i] > k) {
      a[i] = a[i] - b[k];
      __sync_lock_release(&a[i]);
    } 
    d[i] = d[i-1] + a[i];
  }
}

void init(int * m, int * a, int * b, int * c, int * d, int * ans, int k) {
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
    if (m[i] > k) {
      ans[i] = ans[i-1];
    } else {
      ans[i] = ans[i-1] + a[i];
    }
  }  
}

int main() {
  int i;
  int m[N];
  int a[N], b[N], ans[N];
  int c[N], d[N];
  int k;
  k = 100;

  init(m, a, b, c,d, ans, k);
  part_simd(a,b,c,d,m,k,N);

  for (i = 0; i < N; i++) {
    if (d[i] != ans[i]) {
      PRINT_NG;
    }
  }  
  PRINT_OK;
  return 0;
}
#endif


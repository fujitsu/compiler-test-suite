#include <stdio.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ((33>ROLL_TIMES)?33:ROLL_TIMES)
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void foo(int * restrict kk, double * restrict res1, int m, int n, int k) {
  int i,j;

  for (j = 0; j < n; ++j) {
    for(i = 0; i < n; ++i) {
      if (kk[k] == m) { 
	res1[i] = i;    
      }
    }
  }
}

void init(int *kk, double * ans, int k) {
  int i;
  for (i = 0; i < N; i++) {
    kk[i] = 1;
    ans[i] = i;
  }
}

int main() {
  int i,m,k;
  int kk[N];
  double ans[N];
  double res1[N];
  m = 1;
  k = 32;

  init(kk, ans, k);
  foo(kk,res1,m,N,k);

  for (i = 0; i < N; i++) {
    if (ans[i] != res1[i]) {
      PRINT_NG;
    }
  }  
  PRINT_OK;
  return 0;
}

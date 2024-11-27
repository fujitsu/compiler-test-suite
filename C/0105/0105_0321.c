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

void init(double a[][N],double b[][N]) {
  int i,j;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      a[i][j] = i+j;
      b[i][j] = i+j;
    }
  }
}

double foo() {
  int i,j;
  double a[N][N];
  double b[N][N];

  init(a,b);

  for(i = 0; i < N; i++) {
    for(j = 0; j < N; j++) {
      a[i][j] = a[i][j] + b[i][j];
    }
  }
  return a[i-1][j-1];
}


int main() {
  double ans[N][N];
  double ret;

  ret = foo();
  ans[N-1][N-1] = (N-1)*4;

  if (ret != ans[N-1][N-1]) {
    PRINT_NG;
  }
  PRINT_OK;
  return 0;
}

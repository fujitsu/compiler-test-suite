#include <stdio.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ((11>ROLL_TIMES)?11:ROLL_TIMES)
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void init(double a[][N],double b[][N],double *c) {
  int i,j;
  for (i = 0; i < N; i++) {
    c[i] = 10.0;
    for (j = 0; j < N; j++) {
      a[i][j] = i+j;
      b[i][j] = i+j;
    }
  }
}

double foo(double * restrict c, int k) {
  int i,j;
  double a[N][N];
  double b[N][N];

  init(a,b,c);

  for(i = 0; i < N; i++) {
    for(j = 0; j < 4; j++) {
	a[i][j] = a[i][j] + c[k];
    }
  }
  return a[i-1][j-1];
}

int main() {
  int i;
  double ans[N][N];
  double ret;
  double c[N];
  int k;
  k = 10;
  ans[N-1][N-1] = ((N-1)+(4-1)+10);

  ret = foo(c, k);

  if (ret != ans[N-1][N-1]) {
    printf("%lf", ret);
    PRINT_NG;
  }
  PRINT_OK;
  return 0;
}

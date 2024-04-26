#include <stdio.h>
#include <complex.h>

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define CONST_DISTANCE 10
#define POS 7

float _Complex a[N][N][N];
float _Complex b[N][N][N];
float _Complex res[N][N][N];

void test(int);

#if !defined(ASM_ONLY)

void init() {
  int i,j,k;

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      for (k=0; k<N; k++) {
	a[i][j][k] = 0.0 + 0.0i;
	b[i][j][k] = 2.0 + 2.0i;
	res[i][j][k] = 0.0 + 0.0i;
      }
    }
  }
  for (i=0; i<N; i++) {
    res[i][POS][POS] = b[i][POS][POS];
  }
}


int main() {
  int i,j,k;

  if (N <= POS) {
    printf("OK\n");
    return 0;
  }
  init();
  for(i=0; i<2; i++) {
    test(N);
  }

  for(i=0; i<N; i++) {
    for(j=0; j<N; j++) {
      for(k=0; k<N; k++) {
	if(a[i][j][k] != res[i][j][k]) {
	  printf("NG\n");
	}
      }
    } 
  }
  printf("OK\n");
  return 0;
}

#endif

void test(int n) {
  int i;
  for (i=0; i<n; i++) {
    a[i][POS][POS] = b[i][POS][POS];
  }
}

#include <stdio.h>
#include <math.h>
#define n 6
#define bs 3
#define ANS_C 6.0

#define equal_check(val1, val2) (fabsf(val1 - val2) >= 1.0e-6F)

void test(float C[n][n]) {
  int i, j;
  float ans_c = ANS_C;
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {    
      if (equal_check(C[i][j], ans_c)) {
	printf("NG\n");
      }
    }
  }
  printf("OK\n");
}

void matmul_depend(int N, int BS, float A[n][n], float B[n][n], float C[n][n])
{
  int i, j, k, ii, jj, kk;
  {
    {
      for (i = 0; i < N; i+=BS) {
	for (j = 0; j < N; j+=BS) {
	  for (k = 0; k < N; k+=BS) {
#pragma omp task private(ii, jj, kk) firstprivate(i, j, k)	\
  depend ( in: A[i:BS][k:BS], B[k:BS][j:BS] )	\
  depend ( inout: C[i:BS][j:BS] )
      for (ii = i; ii < i+BS; ii++ )
	for (jj = j; jj < j+BS; jj++ )
	  for (kk = k; kk < k+BS; kk++ )
	    C[ii][jj] = C[ii][jj] + A[ii][kk] * B[kk][jj];
	  }
	}
      }
    }
  }
}

int main() {
  float A[n][n], B[n][n], C[n][n];
  int i, j;
  
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      A[i][j] = 1.0;
      B[i][j] = 1.0;
      C[i][j] = 0.0;	
    }
  }

  #pragma omp parallel
  {
    #pragma omp single
    {
      matmul_depend(n, bs, A, B, C);
    }
  }

  test(C);

  return 0;
}

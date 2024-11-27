#include <stdio.h>


#define N 50
#define ANS -82500
int main()
{
  int i, j, k;
  int a[N], b[N], c[N][N];
  int p=0, q=0;

  for (i = 0; i < N; i++) {
    a[i] = i % 3;
    b[i] = i*i % 3;
#pragma clang loop unroll_count(5)
    for (j = 0; j < N; j++) {
      c[i][j] = a[i] - b[i];
    }
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
#pragma clang loop unroll_count(10)
      for (k = 0; k < N; k++) {
	p = c[i][j] - a[k];
	q = q + p;
	if ( q > 100 ) {
	  q = b[k];
	}
      }
    }
  }

  printf("q  = %d --- ", q); 

  if (q == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %d\n", ANS);
  }
}

#include <stdio.h>

#define N 100

void foo(int a[][N], int b[][N], int c[][N]) {
  int i, j;
  for (i = 0; i < N; ++i) {
    for (j = 0; j < N; ++j) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}


void bar(int *a, int *b, int *c) {
  int i;
  for (i = 0; i < N; ++i) {
    a[i] = b[i] + c[i];
  }
}

void init(int *b, int *c, int *res, int bb[][N], int cc[][N], int res2[][N]) {
  int i, j;
  for (i = 0; i < N; ++i) {
    b[i] = i;
    c[i] = i;
    res[i] = b[i] + c[i];
    for (j = 0; j < N; ++j) {
      bb[i][j] = i*j;
      cc[i][j] = i*j;
      res2[i][j] = bb[i][j] + cc[i][j];
    }
  }
}

void check(int *a, int *res, int aa[][N], int res2[][N]) {
  int i, j;
  for (i = 0; i < N; ++i) {
    if (res[i] != a[i]) {
      printf("NG\n");
    }
    for (j = 0; j < N; ++j) {
      if (res2[i][j] != aa[i][j]) {
	printf("NG\n");
      }
    }
  }
  printf("OK\n");
}

int main() {
  int a[N], b[N], c[N], res[N];
  int aa[N][N], bb[N][N], cc[N][N], res2[N][N];
  
  init(b,c,res,bb,cc,res2);
  bar(a,b,c);
  foo(aa,bb,cc);
  check(a,res,aa,res2);
  return 0;
}

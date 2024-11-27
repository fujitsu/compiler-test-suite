
#include <stdio.h>
#include <stdlib.h>

#define N 1024

void move_cc(int *a,int *b,int *c,int *d,int *e,int *f) {
  int i;
  for (i = 0; i < N; i++) {
    if ( i < N/2) {
      a[i] = i;
    } else {
      a[i] = -i;
    }
    if ( i <= N/3) {
      b[i] = i;
    } else {
      b[i] = -i;
    }
    if ( i > N/4) {
      c[i] = i;
    } else {
      c[i] = -i;
    }
    if ( i >= N/5) {
      d[i] = i;
    } else {
      d[i] = -i;
    }
    if ( i == N/6) {
      e[i] = i;
    } else {
      e[i] = -i;
    }
    if ( i != N/7) {
      f[i] = i;
    } else {
      f[i] = -i;
    }
  }
}

void flt(double* A,double*  B){
  int i;
  double I = 0, J = 1;
#pragma clang loop unroll(disable)
  for (i = 0; i < N; i++) {
    if (A[i] < B[i]) {
      A[i] = I;
    } else {
      A[i] = J;
    }
  }
}
void fle(double* A,double*  B){
  int i;
  double I = 0, J = 1;
#pragma clang loop unroll(disable)
  for (i = 0; i < N; i++) {
    if (A[i] <= B[i]) {
      A[i] = I;
    } else {
      A[i] = J;
    }
  }
}
void fgt(double* A,double*  B){
  int i;
  double I = 0, J = 1;
#pragma clang loop unroll(disable)
  for (i = 0; i < N; i++) {
    if (A[i] > B[i]) {
      A[i] = I;
    } else {
      A[i] = J;
    }
  }
}
void fge(double* A,double*  B){
  int i;
  double I = 0, J = 1;
#pragma clang loop unroll(disable)
  for (i = 0; i < N; i++) {
    if (A[i] >= B[i]) {
      A[i] = I;
    } else {
      A[i] = J;
    }
  }
}
void fne(double* A,double*  B){
  int i;
  double I = 0, J = 1;
#pragma clang loop unroll(disable)
  for (i = 0; i < N; i++) {
    if (A[i] == B[i]) {
      A[i] = I;
    } else {
      A[i] = J;
    }
  }
}

int main() {
  printf("OK\n");
  return 0;
}


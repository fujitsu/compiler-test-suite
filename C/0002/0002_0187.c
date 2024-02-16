#include <stdio.h>
#include <math.h>
#define N 1024

int A[N];
double X[N],Y[N],Z[N];

void sub(void) {
  int i=0;
  while (A[i]!=0) {
    Z[i] = X[i] + Y[i];
    ++i;
  }
  printf("%d\n",i);
}

void init(void) {
  int i=0;
  for(i=0;i<N;++i) {
    A[i] = (N-2*i);
    X[i] = sin(i*1.1);
    Y[i] = cos(i*1.3);
  }
}

int main(void) {
  init();
  sub();
  return 0;
}

#include <stdio.h>
#include <math.h>
#define N 1024

int A[N];
long long int X[N],Y[N],Z[N];

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
    A[i] = (N-2*i)%309;
    X[i] = (N/3+i%21);
    Y[i] = (i*3-N/11)%7;
  }
}

int main(void) {
  init();
  sub();
  
  return 0;
}

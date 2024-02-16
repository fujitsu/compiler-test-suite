#include <stdio.h>
#include <math.h>
#define N 1024

int A[N];
long long int X[N],Y[N],Z[N];

extern void sub(void);

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
    A[i] = ((i+1)*3)%337;
    X[i] = (N/3+i%35);
    Y[i] = (i*3-N/17)%111;
  }
}

int main(void) {
  int i;
  init();
  sub();
  
  for(i=0;i<N;++i) {
    printf("Z[%d]=%lld\n",i,Z[i]);
  }
  
  return 0;
}

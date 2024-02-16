#include <stdio.h>
#define N 1024
#define M 1011

int A[N];
int B[N];

void datadepend(void) {
  int i;
  for(i=0;i<M;++i) {
    B[i] = B[A[i]];
  }
}

void init(void) {
  int i;
   for(i=0;i<N;++i) {
    A[i] = ((i*3)%121+2*i)%N;
    B[i] = ((N-i*3)%37+2*i);
  }
  
}

void printer(void) {
  int i;
  for(i=0;i<N;++i) {
    printf("%d %d\n",i,B[i]);
  }
}
  
int main(void) {
  init();
  printer();
  datadepend();
  printer();
}

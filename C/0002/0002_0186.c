#include <stdio.h>
#define N 1024

int A[N];
void sub(void) {
  int i=0;
  while (A[i]!=0) {
    i++;
  }
  printf("%d\n",i);
}

void init(void) {
  int i=0;
  for(i=0;i<N;++i) {
    A[i] = (N-2*i);
  }
}

int main(void) {
  init();
  sub();
  return 0;
}

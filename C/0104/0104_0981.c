#include <stdio.h>
#define N 1024

void sub(double *restrict a,double *restrict b){
  int i;
  for (i=0;i<N;++i) {
    a[i] = b[i];
  }
}

int main(void){
  double a[N],b[N];
  sub(a,b);
  puts("OK");
  return 0;
}


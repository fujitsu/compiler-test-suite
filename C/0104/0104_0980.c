#include <stdio.h>
#define N 1024

void sub(double *restrict b){
  int i;
  for (i=1;i<N;++i){
    b[i] = i;
  }
}
int main(void){
  double b[N];
  sub(b);
  puts("OK");
  return 0;
}


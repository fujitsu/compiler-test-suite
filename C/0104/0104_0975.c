#include <stdio.h>
#define N 1024

void sub(double *restrict b){
  int i;
  for (i=1;i<5;++i){
    b[i+1] = b[i+1] + b[i];
  }
}
int main(void){
  double b[N];
  int i;

  for (i=0;i<64;++i) {
    sub(b);    
  }
  puts("OK");
  return 0;
}


#include <stdio.h>
void foo(double * restrict a,double * restrict b,int i){

  while(i>0){
    a[i] = b[i] + a[i];
    i--;
  }
  return;
}

int main(void){
  puts("OK");
  return 0;
}

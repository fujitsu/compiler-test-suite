#include <stdio.h>
#define N 1024
double a[N][N];
double b[N][N];

void test(){
  int i,j;
  for (i=0;i<5;++i) {
    for (j=0;j<N;++j) {
      a[j][i] = b[j][i];
    }
  }
}

int main(void){
  puts("OK");
  return 0;
}

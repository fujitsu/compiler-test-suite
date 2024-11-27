#include <stdio.h>
#define N 64
double a[N][N][N];
double b[N][N][N];

void test(){
  int i,j,k;
  for (i=0;i<N;++i) {
    for (j=0;j<5;++j) {
      for (k=0;k<N;++k) {
	a[j][i][k] = b[j][i][k];
      }
    }
  }
}

int main(void){
  puts("OK");
  return 0;
}

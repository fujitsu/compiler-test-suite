
#include <stdio.h>
#define N (1024)

void init (double *restrict a,double *restrict b,unsigned int end) {
  unsigned int u, c=0;
  u = 0;
  while (u<end) {
    a[u] = 0.0;
    b[u] = u * 1.0;
    u++;
    c++;
  }
  
}

void u4(double *restrict a,double *restrict b,unsigned int end)
{
  unsigned int u, c=0;
  u = 0;
  while (u<end) {
    a[u] = b[u];
    u++;
    c++;
  }
}

int main(void) {
  double a[N],b[N];
  unsigned int u, c=0;
  init(a,b,N);
  u4(a,b,N);
  
  u = 0;
  while (u<N) {
    if(a[u] != b[u] ){ 
      c = 1;
    }
    u ++;
  }
  if ( c==1 ) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }
}

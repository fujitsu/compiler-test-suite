
#include <stdio.h>
#define N (1024)

void init (double *restrict a,double *restrict b,unsigned int start) {
  unsigned int u, c=0;
  u = start;
  while (u>=1UL) {
    a[u] = 0.0;
    b[u] = u * 1.0;
    u--;
    c++;
  }
  
}

void u4(double *restrict a,double *restrict b,unsigned int start)
{
  unsigned int u, c=0;
  u = start;
  while (u>=1UL) {
    a[u] = b[u];
    u--;
    c++;
  }
}

int main(void) {
  double a[N],b[N];
  unsigned int u, c=0;
  init(a,b,N-1);
  u4(a,b,N-1);
  
  u = N-1;
  while (u>=1UL) {
    if(a[u] != b[u] ){ 
      c = 1;
    }
    u--;
  }
  if ( c==1 ) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }
}

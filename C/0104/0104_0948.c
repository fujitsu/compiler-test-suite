
#include <stdio.h>
#define N (1024)

void init (double *restrict a,double *restrict b,signed int start) {
  signed int u, c=0;
  u = start;
  while (u>=0) {
    b[u] = u * 1.0;
    c++;
    u--;
  }
  
}

void signed4(double *restrict a,double *restrict b,signed int start)
{
  signed int u, c=0;
  u = start;
  while (u>=0) {
    a[u] = b[u];
    u--;
    c++;
  }
}

int main(void) {
  double a[N],b[N];
  signed int u, c=0;
  init(a,b,N-1);
  signed4(a,b,N-1);
  
  u = N-1;
  while (u>=0) {
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

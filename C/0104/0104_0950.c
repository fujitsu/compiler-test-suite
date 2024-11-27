
#include <stdio.h>
#define N (1024)
#define M (2)

void init (double *restrict a,double *restrict b,signed int end) {
  signed int u, c=0;
  u = 0;
  while (u<end) {
    a[u] = 0.0;
    b[u] = u * 1.0;
    u+=M;
    c++;
  }
  
}

void signed4(double *restrict a,double *restrict b,signed int end)
{
  signed int u, c=0;
  u = 0;
  while (u<end) {
    a[u] = b[u];
    u+=M;
    c++;
  }
}

int main(void) {
  double a[N],b[N];
  signed int u, c=0;
  init(a,b,N);
  signed4(a,b,N);
  
  u = 0;
  while (u<N) {
    if(a[u] != b[u] ){ 
      c = 1;
    }
    u+=M;
  }
  if ( c==1 ) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }
}


#include <stdio.h>
#define N (1024)

void init (double *restrict a,double *restrict b,unsigned int end) {
  unsigned int u, c=0;
  for(u=0;u<end;u++){ 
    c++;
    a[u] = 0.0;
    b[u] = u * 1.0;
  }
  
}

void u4(double *restrict a,double *restrict b,unsigned int end)
{
  unsigned int u, c=0;
  for(u=0;u<end;u++){ 
    c++;
    a[u] = b[u];
  }
}

int main(void) {
  double a[N],b[N];
  unsigned int u, c=0;
  init(a,b,N);
  u4(a,b,N);
  
  for(u=0;u<N;u++){ 
    if(a[u] != b[u] ){ 
      c = 1;
    }
  }
  if ( c==1 ) {
    printf("NG\n");
  } else {
    printf("OK\n");
  }
}

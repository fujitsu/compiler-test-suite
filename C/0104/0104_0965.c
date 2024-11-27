
#include <stdio.h>
#define N (1024)

void init (double *restrict a,double *restrict b,unsigned long int start) {
  unsigned long int u, c=0UL;
  for(u=start;u>=1UL;u--){ 
    c++;
    a[u] = 0.0;
    b[u] = u * 1.0;
  }
  
}

void u8(double *restrict a,double *restrict b,unsigned long int start)
{
  unsigned long int u, c=0UL;
  for(u=start;u>=1UL;u--){ 
    c++;
    a[u] = b[u];
  }
}

int main(void) {
  double a[N],b[N];
  unsigned long int u, c=0UL;
  init(a,b,N-1);
  u8(a,b,N-1);
  
  for(u=N-1;u>=1UL;u--){ 
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

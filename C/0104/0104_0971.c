
#include <stdio.h>
#define N (1024)
#define M (2)

void init (double *restrict a,double *restrict b,unsigned int start) {
  unsigned int u, c=0;
  for(u=start;u>=M;u-=M){ 
    c++;
    a[u] = 0.0;
    b[u] = u * 1.0;
  }
}

void signed4(double *restrict a,double *restrict b,unsigned int start)
{
  unsigned int u, c=0;
  for(u=start;u>=M;u-=M){ 
    c++;
    a[u] = b[u];
  }
}

int main(void) {
  double a[N],b[N];
  unsigned int u, c=0;
  init(a,b,N-1);
  signed4(a,b,N-1);
  
  for(u=N-1;u>=M;u-=M){ 
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

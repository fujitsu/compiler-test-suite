
#include <stdio.h>
#define N (1024)

void init (double *restrict a,double *restrict b,signed long int start) {
  signed long int u, c=0;
  for(u=start;u>=0;u--){ 
    c++;
    a[u] = 0.0;
    b[u] = u * 1.0;
  }
  
}

void signed8(double *restrict a,double *restrict b,signed long int start)
{
  signed long int u, c=0;
  for(u=start;u>=0;u--){ 
    c++;
    a[u] = b[u];
  }
}

int main(void) {
  double a[N],b[N];
  signed long int u, c=0;
  init(a,b,N-1);
  signed8(a,b,N-1);
  
  for(u=N-1;u>=0;u--){ 
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


#include <stdio.h>
#define N (1024)

void init (double *restrict a,double *restrict b,signed long int end) {
  signed long int u, c=0;
  for(u=0;u<end;u++){ 
    c++;
    a[u] = 0.0;
    b[u] = u * 1.0;
  }
  
}

void signed8(double *restrict a,double *restrict b,signed long int end)
{
  signed long int u, c=0;
  for(u=0;u<end;u++){ 
    c++;
    a[u] = b[u];
  }
}

int main(void) {
  double a[N],b[N];
  signed long int u, c=0;
  init(a,b,N);
  signed8(a,b,N);
  
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

#include <stdio.h>
#include <omp.h>

int func(void);

int func(void) {
  int a;
  a=1;
  return a; 
}

int main(void)
{
  int i,j;
  int res=0;
  int n=10;

#pragma omp parallel shared(res)
#pragma omp for collapse(2) reduction(+:res)
  for(i=func(); i<=n; i++){
    for(j=1; j<=n; j++){
        res+=1;
    }
  }
  if(res==n*n) {
    printf("OK\n");
  } else {
    printf("NG %d\n",res);
    return 1;
  }
  return 0;
}

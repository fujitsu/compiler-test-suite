#include <stdio.h>
#include <omp.h>

int func(int n, int m);

int func(int n, int m) {
  int i;
  int s=0;
  for (i=1; i<=n; i++) {
    s+=i;
  }
  return s-m; 
}

int main(void)
{
  int i,j;
  int res=0;
  int n=10;

#pragma omp parallel shared(res)
#pragma omp for collapse(2) reduction(+:res)
  for(i=func(n,54); i<=n; i++){
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

#include <stdio.h>
#include <omp.h>

int func(int n);

int func(int n) {
  int i;
  int s=0;
  for (i=1; i<=n; i++) {
    s+=1;
  }
  return s; 
}

int main(void)
{
  int i,j;
  int res=0;
  int n=10;

#pragma omp parallel shared(res)
#pragma omp for reduction(+:res)
  for(i=1; i<=func(n); i++){
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

#include <stdio.h> 

int main(void)
{
  int i, a[100];
#pragma omp parallel for
  for(i=0;i<100;i++){
    a[i]=0;
  }
  printf("%d \n",a[0]);
  printf("ok \n");
  return 0;
}

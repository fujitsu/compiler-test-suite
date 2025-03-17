#include <stdio.h> 

void abcdefghijklmnopqrstuvwxy0123456789(void);

void abcdefghijklmnopqrstuvwxy0123456789(void)
{
  int i, a[100];
#pragma omp parallel for
  for(i=0;i<100;i++){
    a[i]=i;
  }
#pragma omp parallel for
  for(i=0;i<100;i=i+2){
    a[i]=2;
  }
  printf("%d %d\n",a[3],a[4]);
  printf("ok \n");
}

int main(void)
{
  abcdefghijklmnopqrstuvwxy0123456789();
  return 0;
}

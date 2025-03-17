#include <stdio.h> 

void my_sub(int *c);

void my_sub(int *c)
{
  int i, a[100];
#pragma omp parallel for
  for(i=0;i<100;i++){
    a[i]=c[i];
  }

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
  int i, a[100];

#pragma omp parallel for
  for(i=0;i<100;++i){
    a[i]=i;
  }

  my_sub(a);

#pragma omp parallel for
  for(i=0;i<100;++i){
    a[i]=-1*a[i];
  }

  printf("%d %d\n",a[3],a[4]);

  return 0;
}

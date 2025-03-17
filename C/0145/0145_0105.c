#include <stdio.h>

void subsubsubsub_0123(void);

int main(void)
{
  printf("test \n");
  subsubsubsub_0123();
  printf("ok \n");
  return 0;
}

void subsubsubsub_0123(void) {
  int i, a[100];
#pragma omp parallel
  {
#pragma omp for
    for(i=0;i<100;i++){
      a[i]=0;
    }
  }
  printf("%d\n",a[0]);
}

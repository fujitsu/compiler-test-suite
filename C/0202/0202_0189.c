#include <stdio.h>
int main() {
  int i, j=0;
#pragma omp parallel
#if  __STDC_VERSION__ >= 199901L 
  for(int j = 0; j < 10; j++ )
#else
  for(    j = 0; j < 10; j++ )
#endif
  {
    #pragma omp parallel
    {
      for(i = 0; i < 10; i++ ) {
        goto label_1;
      } label_1:;
    }
    break;
    #pragma omp parallel
    {
      for(i = 0; i < 10; i++ ) {
        goto label_2;
      }
      label_2:;
    }
  }
  printf("###  OK ###\n");
  return 0;
}

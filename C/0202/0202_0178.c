#include <stdio.h>
int main() {
  int i;
#pragma omp parallel
#if  __STDC_VERSION__ >= 199901L 
  for(int i=0;i<10;i++)
#else
  for(    i=0;i<10;i++)
#endif
  {
    continue;
  }
  printf("###  OK ###\n");
  return 0;
}

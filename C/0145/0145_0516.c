













#include <stdio.h>
int main()
{
  int a=0;
#pragma omp parallel
  {
#pragma omp single private(a) nowait
    a++;
  }
  printf("pass : single_001\n");
}















#include <stdio.h>
int main()
{
  int a=0;
#pragma omp parallel
  {
#pragma omp single nowait
    a++;
  }
  printf("pass : single_006\n");
}

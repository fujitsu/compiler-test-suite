













#include <stdio.h>
int main()
{
  int a=0;
#pragma omp parallel
  {
#pragma omp single private(a)
    a++;
  }
  printf("pass : single_002\n");
}

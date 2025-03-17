













#include <stdio.h>
int main()
{
  int a=0;
#pragma omp parallel
  {
#pragma omp single firstprivate(a)
    a++;
  }
  printf("pass : single_004\n");
}

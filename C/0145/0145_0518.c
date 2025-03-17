













#include <stdio.h>
int main()
{
  int a=0;
#pragma omp parallel
  {
#pragma omp single firstprivate(a) nowait
    a++;
  }
  printf("pass : single_003\n");
}

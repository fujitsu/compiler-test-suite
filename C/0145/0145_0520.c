













#include <stdio.h>
int main()
{
  int a=0;
#pragma omp parallel private(a)
  {
    a=0;
#pragma omp single copyprivate(a)
    a++;
  }
  printf("pass : single_005\n");
}















#include <stdio.h>
int main()
{
  int a=0;
#pragma omp parallel
  {
#pragma omp single
    a++;
  }
  printf("pass : single_007\n");
}

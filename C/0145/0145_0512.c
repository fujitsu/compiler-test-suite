












#include <stdio.h>
int main()
{
  int a,b;
  a=b=0;
#pragma omp parallel
  {
#pragma omp sections nowait
    {
#pragma omp section
      a++;
#pragma omp section
      b++;
    }
  }
  printf("pass : sections_002\n");
}

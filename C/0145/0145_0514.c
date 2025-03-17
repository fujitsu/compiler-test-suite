












#include <stdio.h>
int main()
{
  int a,b;
  a=b=0;
#pragma omp parallel
  {
#pragma omp sections reduction(+:a)
    {
#pragma omp section
      a++;
#pragma omp section
      b++;
    }
  }
  printf("pass : sections_004\n");
}

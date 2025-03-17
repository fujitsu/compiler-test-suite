












#include <stdio.h>

int a,b;

void func()
{
#pragma omp sections reduction(+:a)
  {
#pragma omp section
    a++;
#pragma omp section
    b++;
  }
}

int main()
{
  a=b=0;
#pragma omp parallel
  {
    func();
  }
  printf("pass : sections_005\n");
}

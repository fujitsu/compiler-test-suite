#include <stdio.h>

int main(void)
{
#pragma omp parallel
  {
    printf("Hello World!\n");
  }
  return 0;
}

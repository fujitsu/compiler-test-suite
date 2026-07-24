#include <stdio.h>

int main()
{
  int i, a[2];
  i=0;
  a[1]=1;

  #pragma omp parallel sections
  {
    #pragma omp atomic
    i+=a[1];
  }
  printf("OK\n");
  return 0;
}

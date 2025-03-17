#include <stdio.h>

int main()
{
  int a=0,i;
#pragma omp parallel
  {
#pragma omp for schedule(auto)
    for (i=0;i<100;i++) {
#pragma omp atomic
      a++;
    }
  }
  if (a != 100) printf("NG : a = %d\n");
  printf("pass\n");
  return 0;
}

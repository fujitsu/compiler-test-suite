












#include <stdio.h>
int main()
{
  int i,a;
  a=10;
#pragma omp parallel
  {
#pragma omp for nowait schedule(runtime)
    for (i=0;i<10;i++) {
      a=i+a;
    }
  }
  printf("pass : loop_008\n");
}

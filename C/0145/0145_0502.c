












#include <stdio.h>
int main()
{
  int i,a;
  a=10;
#pragma omp parallel
  {
#pragma omp for schedule(guided,1)
    for (i=0;i<10;i++) {
      a=i+a;
    }
  }
  printf("pass : loop_003\n");
}

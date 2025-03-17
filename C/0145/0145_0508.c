












#include<stdio.h>
#include<omp.h>

#define N 20
int main()
{
  int a;
  a = 0;
#pragma omp parallel shared(a)
  {
    int i;
#pragma omp for lastprivate(a)
    for (i = 0; i < N; i++) {
      a = i;
    }
  }
  printf("pass : loop_009\n");
}

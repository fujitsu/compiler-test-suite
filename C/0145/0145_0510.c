












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
#pragma omp for reduction(+:a)
    for (i = 0; i < N; i++) {
      a += 1;
    }
  }
  printf("pass : loop_011\n");
}

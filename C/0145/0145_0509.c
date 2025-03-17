












#include<stdio.h>
#include<omp.h>

#define N 20
int a;

void func()
{
  int i;
#pragma omp for reduction(+:a)
  for (i = 0; i < N; i++) {
    a += 1;
  }
}

int main()
{
  a = 0;
#pragma omp parallel
  {
    func();
  }
  printf("pass : loop_010\n");
}

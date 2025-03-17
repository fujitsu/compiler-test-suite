
#include <stdio.h>
#include <omp.h>
void sub01() {
  int a, x;
  a = 0;
  x = 1;
#pragma omp task final(a) shared(x)
  {
    if (omp_in_final()) printf("error 102\n");
#pragma omp task shared(x)
    {
      if (omp_in_final()) printf("error 103\n");
      x = 2;
    }
    
#pragma omp taskwait
  }
#pragma omp taskwait
}

void sub02() {
  int x;
  x = 1;
#pragma omp task if(0) shared(x)
  {
    if (omp_in_final()) printf("error 202\n");
#pragma omp task shared(x)
    {
      if (omp_in_final()) printf("error 203\n");
      x = 2;
    }
    
#pragma omp taskwait
  }
#pragma omp taskwait
}

void sub03() {
  int a, x;
  a = 0;
  x = 1;
#pragma omp task if(a==1) shared(x)
  {
    if (omp_in_final()) printf("error 302\n");
#pragma omp task shared(x)
    {
      if (omp_in_final()) printf("error 303\n");
      x = 2;
    }
    
#pragma omp taskwait
  }
#pragma omp taskwait
}

int main() {
#pragma omp parallel
  {
    sub01();
    sub02();
    sub03();
  }
  printf("pass\n");
  return 0;
}

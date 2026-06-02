#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

double a[1];

#pragma omp threadprivate(a)

int main()
{
  int i,error;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;
#pragma omp parallel
  {
    a[0] = 10000;
#pragma omp single copyprivate(a)
    {
      a[0] = omp_get_thread_num();
      i = omp_get_thread_num();
    }
    if(a[0] != i) {
#pragma omp atomic
      error++;
    }
  }
  
  if(error != 0) {
    puts("NG");
  } else {
    puts("pass");
  }
}


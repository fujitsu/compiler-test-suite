#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <complex.h>

int error;

double _Complex i;

#pragma omp threadprivate(i)
int main()
{
  double _Complex k;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;

#pragma omp parallel
  {
    i = omp_get_thread_num();
#pragma omp single copyprivate(i)
    {
      i = omp_get_thread_num();
      k = omp_get_thread_num();
    }

   if (k != i) {
#pragma omp atomic
      error ++;
    }
  }

  if(error != 0)
    puts("NG");
  else
    puts("pass");
  
}


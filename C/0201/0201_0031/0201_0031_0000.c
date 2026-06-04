#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int error;

int i;
float j;

#pragma omp threadprivate(i,j)
int main()
{
  int k;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;

#pragma omp parallel
  {
    i = 10000;
    j = 100000;
#pragma omp single copyprivate(i,j)
    {
      i = omp_get_thread_num();
      j = 0;
      k = omp_get_thread_num();
    }

   if (k != i || j != 0) {
#pragma omp atomic
      error ++;
    }
  }

  if(error != 0)
    puts("NG");
  else
    puts("pass");
  
}


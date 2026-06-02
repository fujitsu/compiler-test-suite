#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int error;

int i[2][2];

#pragma omp threadprivate(i)
int main()
{
  int k;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;

#pragma omp parallel
  {
    i[0][0] = i[0][1] = i[1][0] = i[1][1] = omp_get_thread_num();
#pragma omp single copyprivate(i)
    {
      i[0][0] = i[0][1] = i[1][0] = i[1][1] = omp_get_thread_num();
      k = omp_get_thread_num();
    }

   if (k != i[0][0] || k != i[1][1]) {
#pragma omp atomic
      error ++;
    }
  }

  if(error != 0)
    puts("NG");
  else
    puts("pass");
  
}


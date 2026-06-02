#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

float j;

void sub(float ii)
{
  int error;
  static float j;
#pragma omp threadprivate(j)

  j = ii;
  error = 0;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

#pragma omp parallel
  {
    j = 10000;
#pragma omp single copyprivate(j)
    {
      j = 3;
    }
    if( j != 3 ) {
#pragma omp atomic
      error ++;
    }
  }
  if(error != 0) {
    puts("NG");
  }
  else {
    puts("pass");
  }
}


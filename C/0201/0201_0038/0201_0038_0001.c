#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int i[100];
#pragma omp threadprivate(i)

void sub(int n)
{
  int j;
  int error ;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;
#pragma omp parallel private(j)
  {
#pragma omp single copyprivate(i) 
    {
      i[0] = 11;
    }
    for(j=0;j<n;j++) {
      if(i[j] != 11) {
#pragma omp atomic
	error++;
      }
    }
  }

  if(error != 0) {
    puts("NG");
  }
  else {
    puts("pass");
  }
}


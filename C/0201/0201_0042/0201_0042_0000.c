#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{

  int i;
  static int *p;
  static int array[10];
  int error;

#pragma omp threadprivate(p, array)

  omp_set_dynamic(0);
  omp_set_num_threads(4);
    
  for(i=0;i<10;i++) {
    array[i] = 1000;
  }

  error = 0;
#pragma omp parallel
  {
#pragma omp single copyprivate(p, array)
    {
      for(i=0;i<10;i++) {
	array[i] = omp_get_thread_num();
      }
      p=array;
    }
    if(p[1] != array[1]) {
      printf("%d %d\n", p[1], array[1]);
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


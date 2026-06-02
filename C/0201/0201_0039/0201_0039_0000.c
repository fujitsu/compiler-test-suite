#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  int *p;
  int i;
  int error;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  i = 1000;

  error = 0;
#pragma omp parallel private(p)
  {
#pragma omp single copyprivate(p)
    {
      i = omp_get_thread_num();
      p=&i;
    }
    if(*p != i) {
      puts("p");
#pragma omp atomic
      error++;
    }
  }
  
  if(error != 0) {
    puts("NG");
  }
  else {
    puts("pass");
  }
}

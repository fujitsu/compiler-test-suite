#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <omp.h>

struct TAG {
  int array[10];
} st; 

#pragma omp threadprivate(st)

int main()
{
  int *a, i;
  int error;

  omp_set_dynamic(0);
  omp_set_num_threads(4);
  
  error = 0;
#pragma omp parallel private(a)
  {
    a = calloc(10,sizeof(int));
    a[1] = -1;
#pragma omp single copyprivate(st)
    {
      int n;
      for(n=0;n<10;n++) {
        st.array[n] = omp_get_thread_num();
      }
      i = omp_get_thread_num();
    }
    memcpy(a, &st.array, sizeof(int)*10);
    if((a[1] != i)||(a[5]!=i)) {
#pragma omp atomic
      error++;
    }
    free(a);
  }
  if(error != 0) {
    puts("NG");
  } else {
    puts("pass");
  }
}


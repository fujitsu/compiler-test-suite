#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int error;

union TAG {
 long i[2];
} st;

#pragma omp threadprivate(st)
int main()
{
  int n = -1;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;




#pragma omp parallel
  {
#pragma omp single copyprivate(st)
    {
      st.i[0] = omp_get_thread_num();
      n = omp_get_thread_num();


    }

   if (n != st.i[0]) {
#pragma omp atomic
      error ++;
    }
  }

  if(error != 0)
    puts("NG");
  else
    puts("pass");
  
}


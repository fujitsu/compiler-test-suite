#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int error;

struct TAG {
 int i[2];
 double d;
} st;

#pragma omp threadprivate(st)
int main()
{
  int k;

  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;

#pragma omp parallel
  {
    st.i[0] = st.i[1] = omp_get_thread_num();
#pragma omp single copyprivate(st)
    {
      st.i[0] = omp_get_thread_num();
      st.i[1] = omp_get_thread_num() + 1;
      st.d = 100.;
      k = omp_get_thread_num();
    }

   if (k != st.i[0] || (k + 1) != st.i[1] || st.d != 100.) {
#pragma omp atomic
      error ++;
    }
  }

  if(error != 0)
    puts("NG");
  else
    puts("pass");
  
}


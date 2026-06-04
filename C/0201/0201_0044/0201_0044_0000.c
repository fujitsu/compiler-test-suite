#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <omp.h>

static int (*array)[2];
static struct TAG {
  int tmp[2][2];
} st;

#pragma omp threadprivate(array, st)

int main()
{
  int k, error;
  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;
#pragma omp parallel
  {
    array = malloc(sizeof(int) * 2*2);
    array[0][0] = array[1][0] = array[0][1] = array[1][1] = 0;
#pragma omp single copyprivate(st)
    {
      array[0][0] = array[1][0] = array[0][1] = array[1][1] = omp_get_thread_num();
      k = omp_get_thread_num();
      memcpy(&st, array, sizeof(st));
    }
    if((k != st.tmp[0][0]) || (k != st.tmp[1][1])) {
#pragma omp atomic
      error--;
    }
    free(array);
  }

  if(error != 0) {
    puts("NG");
  } else {
    puts("pass");
  }
}


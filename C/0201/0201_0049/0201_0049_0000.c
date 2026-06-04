#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <complex.h>
#include <memory.h>

struct TAG {
  int xx[2][2];
};

static struct TAG array[2][2];
#pragma omp threadprivate(array)

int main()
{
  struct TAG k;
  int error;
  omp_set_dynamic(0);
  omp_set_num_threads(4);

  error = 0;
#pragma omp parallel
  {
    memset(array, 0, sizeof(array));
#pragma omp single copyprivate(array)
    {
      int i,j;
      for(i=0;i<2;i++)
        for(j=0;j<2;j++)
          array[i][j].xx[1][0] = omp_get_thread_num() + 0.I;
      k.xx[1][0]     = omp_get_thread_num() + 0.I;
    }
    
    if((k.xx[1][0] != array[0][0].xx[1][0]) || (k.xx[1][0] != array[1][1].xx[1][0])) {
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


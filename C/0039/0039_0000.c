#include <stdio.h>
#include <omp.h>
int ccc[10];

void a16(void)
{
    int i;
    for( i=0;i<10;i++ ) ccc[i] = 0;
#pragma omp parallel
    {
  #pragma omp master
      {
        ccc[0] = omp_get_num_threads();
      }

  #pragma omp critical (aaa)
      {
        ccc[1]++;
      }

  #pragma omp critical (BBB)
      {
        ccc[2]++;
      }

  #pragma omp critical
      {
        ccc[3]++;
      }
    }

    if( ccc[1] == ccc[0] &&
        ccc[2] == ccc[0] &&
        ccc[3] == ccc[0] ) {
       printf("OK\n");
    }
    else {
       printf("NG(%d):%d, %d, %d\n",ccc[0],ccc[1],ccc[2],ccc[3]);
    }
}

int main()
{
   a16();
}

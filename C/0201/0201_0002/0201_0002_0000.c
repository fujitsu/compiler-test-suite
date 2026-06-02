#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

#define NNN 200

int    threads[1000][NNN];
int    test[NNN];
int    t_num;

#pragma omp threadprivate(test)
int main()
{
  int i;

  for(i=0;i<NNN;i++) {
    test[i] = i;
  }
#pragma omp parallel copyin(test) private(i)
  {
    int j = omp_get_thread_num();
#pragma omp master
    {
      t_num = omp_get_num_threads();
    }
    for(i=0;i<NNN;i++) {
      test[i]+=(j+1);
    }
    for(i=0;i<NNN;i++) {
      threads[j][i] = test[i];
    }
  }

  {
    int x=1,y=200;
    for(i=0;i<t_num;i++) {
      if (threads[i][0] != x || threads[i][NNN-1] != y) {
        printf("%d %d\n", threads[i][0], threads[i][NNN-1]);
        abort();
      }
      x++; y++;
    }
  }
  puts("PASS");
}

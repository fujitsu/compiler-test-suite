#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int    threads[1000];
int    test;
int    t_num;

#pragma omp threadprivate(test)
int main()
{

  test = 1;
#pragma omp parallel copyin(test)
  {
    int j = omp_get_thread_num();
#pragma omp master
    {
      t_num = omp_get_num_threads();
    }
    test+=j;
    threads[j] = test;
  }

  {
    int i,n=1;
    for(i=0;i<t_num;i++) {
      if (threads[i] != n) {
        printf("%d\n", threads[i]);
        abort();
      }
      n++;
    }
  }
  puts("PASS");
}

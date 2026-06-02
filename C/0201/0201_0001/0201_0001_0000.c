
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

int    threads[1000];
short  test1;
double test2;
int    t_num;

#pragma omp threadprivate(test1, test2)
int main()
{
  test1 = 1;
  test2 = 2;
#pragma omp parallel copyin(test1, test2)
  {
    int j = omp_get_thread_num();
#pragma omp master
    {
      t_num = omp_get_num_threads();
    }
    test1+=j;
    test2+=j;
    threads[j] = test1 + test2;
  }

  {
    int i,j=3;
    for(i=0;i<t_num;i++) {
      if (threads[i] != j) {
        printf("%d\n", threads[i]);
        abort();
      }
      j+=2;
    }
  }
  puts("PASS");
}

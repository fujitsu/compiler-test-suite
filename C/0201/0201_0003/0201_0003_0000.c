
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <complex.h>

long double _Complex threads[1000];
float       _Complex test1;
double      _Complex test2;
long double _Complex test3;
int    t_num;

#pragma omp threadprivate(test1, test2, test3)
int main()
{
  test1 = 1;
  test2 = 2;
  test3 = 3;
#pragma omp parallel copyin(test1, test2, test3)
  {
    int j = omp_get_thread_num();
#pragma omp master
    {
      t_num = omp_get_num_threads();
    }
    test1+=j;
    test2+=j;
    test3+=j;
    threads[j] = test1 + test2 + test3;
  }

  {
    int i, j=6;
    for(i=0;i<t_num;i++) {
      if ((int )threads[i] != j) {
        printf("%d\n", (int )threads[i]);
        abort();
      }
      j+=3;
    }
  }
  puts("PASS");
}



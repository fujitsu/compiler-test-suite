
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

union UNS {
  unsigned   uuuu;
} ;

union FLT {
  float      xxxx;
} ;

union TAG {
  union UNS   iiii;
  union FLT   ffff;
} ;

union TAG  threads[1000];
union FLT  test1;
union UNS  test2;
int    t_num;

#pragma omp threadprivate(test1, test2)
int main()
{
  *(int *)&test1.xxxx = 1;
  test2.uuuu = 2;
#pragma omp parallel copyin(test1, test2)
  {
    int j = omp_get_thread_num();
#pragma omp master
    {
      t_num = omp_get_num_threads();
    }
    *(int *)&test1.xxxx+=j;
    test2.uuuu+=j;
    threads[j].iiii = test2;
    threads[j].ffff = test1;
  }

  {
    int i, j=1;
    for(i=0;i<t_num;i++) {
      if ((int )threads[i].iiii.uuuu != j || *(int *)&threads[i].ffff.xxxx != j) {
        printf("%d %d\n", (int )threads[i].iiii.uuuu, *(int *)&threads[i].ffff.xxxx);
        abort();
      }
      j++;
    }
  }
  puts("PASS");
}

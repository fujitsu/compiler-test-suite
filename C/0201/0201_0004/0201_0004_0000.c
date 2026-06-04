
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

struct UNS {
  unsigned   uuuu;
} ;

struct FLT {
  float      xxxx;
} ;

struct TAG {
  struct UNS   iiii;
  struct FLT   ffff;
} ;

struct TAG  threads[1000];
struct FLT  test1;
struct UNS  test2;
int    t_num;

#pragma omp threadprivate(test1, test2)
int main()
{
  test1.xxxx = 1;
  test2.uuuu = 2;
#pragma omp parallel copyin(test1, test2)
  {
    int j = omp_get_thread_num();
#pragma omp master
    {
      t_num = omp_get_num_threads();
    }
    test1.xxxx+=j;
    test2.uuuu+=j;
    threads[j].iiii = test2;
    threads[j].ffff = test1;
  }

  {
    int i, j=2;
    for(i=0;i<t_num;i++) {
      if ((int )threads[i].iiii.uuuu != j || (int )threads[i].ffff.xxxx != j-1) {
        printf("%d %d\n", (int )threads[i].iiii.uuuu, (int )threads[i].ffff.xxxx);
        abort();
      }
      j++;
    }
  }
  puts("PASS");
}

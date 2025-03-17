#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

static int i1, i2, work;

#define N 256

class sub {
public:
sub(int num, ...)
{
    int i;
    unsigned int ld;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;

#pragma omp parallel private(ld)
{
#pragma omp master
  {
    work = omp_get_num_threads() - 1;
    if (work > 256)
      printf("Error: omp_get_num_threads() > 256\n");
  }
    ld = 0;
    ld=omp_get_thread_num();

    i1=0;
    i2=0;
#pragma omp for lastprivate(i1,i2) firstprivate(i1,i2)
    for(i=0;i<N;i++)
      {
	i1 = i1 + ld;
	i2++;
      }
}
}
};
int main()
{
    i1 = 10;
    
    sub O(2, 3, 3);

    work =work * i2;
    printf(" #### C_OMP lastprivate(int) ####\n");
    
    if(i1 == work)
      printf("   OK\n");
    else {
      printf("   NG!! i1 = %d\n",i1);
      printf("        work = %d\n",work);
    }
    exit (0) ;
}

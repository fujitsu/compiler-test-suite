#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[15000], ib, it, ier;
      int  loop=15000;
      int  i;

      for(i=0; i<loop; i++)
	{
          ia[i] = 0;
	}
      ib = 0;
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for
      for(i=0; i<loop; i++)
	{
#pragma omp critical
{
          ib = ib + 1;
          ia[ib-1]=it;
}
	}
}
      ier=0;
      for(i=0; i<loop; i++)
	{
          if(ia[i]==0) ier=ier+1;
        }
      printf( " parallel private(it) do critical -----\n");
      if(ib==loop && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  CRITICAL Directive is not active!\n");
         printf( "     ib=%d  It must be %d\n", ib,loop);
         printf( "     ier=%d\n", ier);

      }
   exit (0) ;
}

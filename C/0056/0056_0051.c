#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[2000], ib, ic, ier;
      int  loop=1000;
      int  i, j;

      for (i=0; i<2000; i++)
	{
          ia[i] = 0;
	}
      ib = 0;
#pragma omp parallel
{
#pragma omp for private(ic)
      for(i=0; i<loop; i++)
	{
#pragma omp critical
{
          ib = ib + 1;
          ia[ib-1]=(i+1);
          ic=0;
          for(j=0; j<loop; j++)
            {
              ic=ic+1;
            }
          ib = ib + 1;
          ia[ib-1]=(i+1);
}
        }
}
      ier=0;
      for(i=0; i<loop; i=i+2)
	{
          if(ia[i]!=ia[i+1]) {
             ier=ier+1;
             printf( "E  i=%d ia[i]=%d ia[i+1]=%d\n",i,ia[i],ia[i+1]);
         }
      }
      printf( "----- ");
      printf( " parallel for private(ic) critical -----\n");
      if(ib==loop*2 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  CRITICAL Directive is not active!\n");
         printf( "     ib=%d  It must be %d\n",ib,loop*2);
         printf( "     ier=%d\n", ier);
      }
   exit (0) ;
}

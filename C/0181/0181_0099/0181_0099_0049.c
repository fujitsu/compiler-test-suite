#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif


int lto_sub_49()
{
      int ia, ib;
      int  loop=10000;
      int  i;

      ia = 0;

#pragma omp parallel
{
#pragma omp for
      for(i=0; i<loop; i++)
	{
#pragma omp atomic
         ia += i;
      }
}
      ib = 0;
      for(i=0; i<loop; i++)
	{
          ib = ib+i;
        }

      printf( " parallel for atomic -----\n");
      if(ia == ib) {
          printf( "OK\n");
      }else{
          printf( "NG!  ATOMIC clause is not active\n");
          printf( "     ia=%d  It must be %d\n",ia , ib);
      }
   return (0) ;
}

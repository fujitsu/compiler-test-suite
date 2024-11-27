#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

void sub(int *, int *, int);
int main()
{
      int  ia, ib[10], it, ier;
      int  loop=10, thread=4;
      int  i;

      ia = 9;
      for(i=0;i<10;i++)
	{
          ib[i] = 0;
	}

#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif

#pragma omp parallel default(shared) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
      sub (&ia, ib, it);
}
      ier = 0;
      for(i=0; i<thread; i++)
	{
          if(ib[i]!=9) ier=ier+1 ;
        }
      for(i=thread; i<loop; i++)
	{
          if(ib[i]!=0) ier=ier+1 ;
        }
      printf( "-----  --");
      printf( " parallel default(shared) private(it) -----\n");
      if(ier==0) {
         printf( "OK!\n");
      }else{
         printf( "NG!  DEFAULT(SHARED) clause is not active!\n");
	 for(i=0;i<10;i++)
	   {
	     if(i==0) printf( "     ib=");
	     printf("%d ",ib[i]);
	   }
	 printf("\n");
      }
   exit (0) ;
}

void sub(int *ia, int ib[10], int it)
{
      ib[it-1] = *ia;
      return;
}

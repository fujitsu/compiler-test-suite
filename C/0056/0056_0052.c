#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[10], ib[10], ic, it, ier;
      int  loop=10, loop2=90000, thread=4;
      int  i;

      for(i=0; i<loop; i++)
	{
          ia[i] = 0;
          ib[i] = 0;
        }

#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif

#pragma omp parallel private(it,i)
{
#ifdef _OPENMP
    it = omp_get_thread_num() ;
#endif

#pragma omp sections
{
#pragma omp section
{
      for (i=0; i<loop2; i++)
      {
          ib[0]=ib[0]+1;
      }
      ia[it] = ia[it] + (it+1);
}
#pragma omp section
{
      for(i=0; i<loop2; i++)
      {
          ib[1]=ib[1]+1;
      }
      ia[it] = ia[it] + (it+1);
}
#pragma omp section
{
      for(i=0; i<loop2; i++)
      {
          ib[2]=ib[2]+1;
      }
      ia[it] = ia[it] + (it+1);
}
}
}
      ic = 0;
      ier = 0;
      for (i=0; i<thread; i++)
      {
          ic=ic+(ia[i]/(i+1));
      }
      for(i=thread; i<loop; i++)
      {
          if (ia[i]!=0) ier=ier+1;
      }
      for (i=0; i<3; i++)
      {
          if (ib[i]!=loop2) ier=ier+1;
      }
      printf( "----- ");
      printf( " parallel private(it) sections -----\n");
      if( ic==3 && ier==0 ){
         printf( "OK\n");
      }else{
         printf( "NG!  SECTIONS clause is not active\n");
         printf( "     ic=%d  It must be 3\n",ic);
         for(i=0; i<loop; i++)
           {
             if(i==0) printf( "     ia=");
	     printf("%d ",ia[i]);
	   }
         printf( "\n");
         for(i=0; i<loop; i++)
           {
             if(i==0) printf( "     ib=");
	     printf("%d ",ib[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}

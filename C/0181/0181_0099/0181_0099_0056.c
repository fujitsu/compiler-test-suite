#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif




































int lto_sub_56 () {
      int ia, ib[10], ic , it, ier;
      int i, loop=10, loop2=20000, thread=4;
      ia = 15;
      for(i=0;i<loop;i++) ib[i] = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 1;
#endif
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() +1;
#else
    it = 1;
#endif
#pragma omp sections lastprivate(ia)
{
#pragma omp section
{
      ib[it]=ib[it]+it;
      for (i=0; i<loop2; i+=1){ 
          ia=ia+it;
      }
      ia=loop2*1;
}
#pragma omp section
{
      ib[it]=ib[it]+it;
      for (i=0; i<loop2; i+=1){ 
          ia=ia+it;
      }
      ia=loop2*2;
}
#pragma omp section
{
      ib[it]=ib[it]+it;
      for (i=0; i<loop2; i+=1){ 
          ia=ia+it;
      }
      ia=loop2*3;
}
}
}
      ic = 0;
      ier = 0;
      for (i=1; i<=thread; i+=1){ 
          ic=ic+ib[i]/i;
      }
      for (i=thread+1; i<loop; i+=1){ 
          if (ib[i]!=0) ier=ier+1;
      }

      printf(" parallel private(it)");
      printf(" sections lastprivate(ia) ------\n");
      if(ia==loop2*3 && ic==3 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SECTIONS LASTPRIVATE clause is not active\n");
         printf( "     ia=%d,  It must be %d\n",ia,loop2*3);
         printf( "     ic=%d, It must be 3\n",ic);
         printf( "     ier=%d\n", ier);
      }
      return (0) ;
      }

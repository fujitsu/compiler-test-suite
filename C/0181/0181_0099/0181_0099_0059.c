#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

































int lto_sub_59 () {
      int ia, ic , ib[10], it, ier;
      int i, loop=10, thread=4;
      ia = 99;
      for(i=0;i<10;i++) ib[i] = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 1;
#endif
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num()+1;
#else
    it = 1;
#endif
#pragma omp single firstprivate(ia)
{
      ib[it] = ia;
      ia = it;
}
}
      ic = 0;
      ier = 0;
      for (i=1; i<=thread; i+=1){ 
          if (ib[i]==ia) {
              ic=ic+1;
          }else{
              if (ib[i]!=0) ier=ier+1;
          }
      }
      for (i=thread+1; i<loop; i+=1){ 
          if (ib[i]!=0) ier=ier+1;
      }

      printf(" parallel private(it)");
      printf(" single firstprivate(ia) ------\n");
      if(ia==99 && ic==1 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SINGLE FIRSTPRIVATE clause is not active\n!");
         printf( "     omp_get_max_threads() = %d\n", thread);
         printf( "     ia=%d,  It must be ""99""\n",ia);
         printf( "     ic=%d,  It must be ""1""\n");
         printf( "     ib[0]=%d\n",ib[0]);
      }
      return (0) ;
}

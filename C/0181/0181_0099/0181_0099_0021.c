#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif
















int lto_sub_21(){
      int ia, ib[10], ier;
      int i, loop = 10, thread=4;
      ia = 9;
      for(i=0;i<10;i++) ib[i]=9;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 1;
#endif
#pragma omp parallel private(i,ia)
{
#ifdef _OPENMP
    ia = omp_get_thread_num();
#else
    ia = 0;
#endif
    ib[ia] = ia;
}
      ier = 0;
      for (i=0; i<thread; i+=1){ 
          if (ib[i]!=i) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){ 
          if (ib[i]!=9) ier=ier+1;
      }

      if(ia==9 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ia=%d, It must be 9\n",ia);
         printf( "     ier=%d\n",ier);
         printf( "     ib[0]=%d\n",ib[0]);
      }
  return (0) ;
}

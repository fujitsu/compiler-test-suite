#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif





















int lto_sub_33 () {
      int ia, ib[50], ier;
      int i,j, loop=50;
      ia = 99;
      for(i=0;i<loop;i++) ib[i] = 0;
      ier = 0;
#pragma omp parallel
{
#pragma omp for private(ia)
      for (j=0; j<loop; j+=1){ 
          ia = j;
          ib[j] = ia;
      }
      if(ia!=99){
#pragma omp atomic
          ier++;
      }
}
      for (j=0; j<loop; j+=1){ 
          if (ib[j]!=j) ier=ier+1;
      }

      printf( " parallel");
      printf( " do private(ia) ------\n");
      if(ia==99 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ia=%d,  It must be 99\n",ia);
         printf( "     ib[0]=%d\n",ib[0]);
      }
      return (0) ;
}

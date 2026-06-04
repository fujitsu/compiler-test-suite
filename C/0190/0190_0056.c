#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib[50], ic, id, it, ier, i ;
      int  st=0;

     memset(ia,0,sizeof(ia));     
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(guided,10)
      for(i=st;i<10;i++){
         ia[i] = it;
      }
}
      memset(ib,0,sizeof(ib));    
      ic=-1;
      id=0;
      for (i=0; i<10; i+=1){ 
         if (ia[i]!=id || ic==-1) {
             ic=ic+1;
             id=ia[i];
         }
         ib[ic]=ib[ic]+1;
      }
      ier=0;
      i=0;
      do {
          if ( ib[i]<ib[i+1] ) ier=ier+1 ;
          i=i+1;
      }while(ib[i+1]!=0 || i>=10);
      if ( ib[0]!=10 ) ier=ier+1 ;
      if ( i>1 ) ier=ier+1 ;
      printf( "      parallel private(it) do schedule(guided,10) -----");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE(GUIDED) clause is incorrect");
         printf( "     ier=%d\n", ier);

      }
      exit (0) ;
      }

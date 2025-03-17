#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif
class Class {
public:
Class(int num, ...)
{
      int ia[50], ib, ic;
      int loop=50;
      int i;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


      ib = 0;
      for(i=0;i<50;i++)
        {
          ia[i] = 0;
        }
#pragma omp parallel for schedule(static,1)
      for (i=0; i<loop; i+=1){ 
#ifdef _OPENMP
       ia[i] = omp_get_thread_num() + 1;
#endif
      }
      ib = 0;
      ic = 0;
      for (i=0; i<loop; i+=1){ 
         if (ia[i]!=ic) {
             ib=ib+1;
             ic=ia[i];
         }
      }
      printf( "-----");
      printf( " parallel for schedule(static,1) -----\n");
      if(ib==loop) {
         printf( "OK\n");
#ifdef _OPENMP
      }else if(omp_get_num_threads() == 1 && ib==1) {
        printf( "OK\n");
#endif
      }else{
         printf( "NG!  SCHEDULE clause is not active!\n");
         printf( "     ib=%d It must be %d",ib, loop);
	 for(i=0;i<50;i++)
	   {
	     if(i==0) printf("      ia=");
	     printf( "%d ",ia[i]);
	   }
	 printf( "\n");
      }
   exit (0) ;
}
};
int main() {
  Class O(3, 1, 2, 3);
}

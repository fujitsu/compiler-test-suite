#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif


class Class {
public:
Class(int num, ...)
{
      int ia[50], ib, ic, it;
      int   thread=4;
      int i ;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


      memset(ia,0,sizeof(ia));
      ib = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(static)
      for (i=0; i<50; i+=1){ 
         ia[i] = it;
      }
}
      ib = 0;
      ic = 0;
      for (i=0; i<50; i+=1){ 
         if (ia[i]!=ic) {
             ib=ib+1;
             ic=ia[i];
         }
      }
      printf( "      parallel private(it)\n");
      printf( "      do schedule(static) -----\n");
      if(ib==thread) {
         printf( "OK\n\n");
      }else{
         printf( "NG!  SCHEDULE clause is not active!\n");
         printf( "     ib=%d thread=%d \n",ib,thread);
      }

}
};
int main() { 
  Class O(3, 1, 2, 3);
      exit (0) ;
}

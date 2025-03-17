#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif






class sub {
public:
sub(short int ia, short int ib[10], int num, ...)
      {
      int it;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


#pragma omp parallel shared(ia) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif
      ib[it] = ia;
}
      return;
}
};
int main() { 
  short int ia, ib[10];
  int ier;
  int i,loop=10, thread=4;
      ia = 9;
      for (i=0;i<10;i++) ib[i] = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
      sub O(ia, ib, 3, 3, 2, 1);
      ier = 0;
      for (i=0; i<thread; i+=1){ 
          if (ib[i]!=9) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){ 
          if (ib[i]!=0) ier=ier+1;
      }
      printf("-----");
      printf(" parallel shared(ia) private(it) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SHARED clause is not active!\n");
         printf( "     ib=%d\n",ib);
      }
  exit (0) ;
}

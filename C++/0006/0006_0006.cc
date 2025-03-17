#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif


class Class {
public:
Class(int num, ...) {
      int ia, ib[100], ier;
      int i, loop = 100, thread=1;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


      ia = 9;
      for(i=0;i<100;i++) ib[i]=9;

#pragma omp parallel private(i,ia)
{
    ia = omp_get_thread_num();
    ib[ia] = ia;
#pragma omp master
    {
      thread = omp_get_num_threads();
      if (thread > 100)
	printf("Error: omp_get_num_threads() > 100\n");
    }
}
      ier = 0;
      for (i=0; i<thread; i+=1){ 
          if (ib[i]!=i) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){ 
          if (ib[i]!=9) ier=ier+1;
      }
      printf( "----- parallel private(ia) ------\n");
      if(ia==9 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ia=%d, It must be 9\n",ia);
         printf( "     ier=%d\n",ier);
       
      }
  exit (0) ;
}
};
int main(){ 
  Class O(2, 1, 2);
}

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
      int ia, ic[100], id, ie, it=0;
      int  loop=90000, thread=1;
      int  i;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


      for(i=0;i<100;i++)
	{
          ic[i] = 0;
	}
      ia = 0;
      ie = 0;

#pragma omp parallel private(it)
{
#pragma omp master
  {
    thread = omp_get_num_threads();
    if (thread > 100)
      printf("Error: omp_get_num_threads() > 100\n");
  }

    it = omp_get_thread_num() ;

#pragma omp single nowait
{
      for(i=0; i<loop; i++)
      {
          ia = ia+1;
      }
#pragma omp atomic
      ie++;
}
      ic[it]=ia;
}
      id=0;
      for (i=0; i<thread; i++)
      {
          if(ic[i]==ia) id=id+1;
      }
      printf( "------");
      printf( " parallel private(it)");
      printf( " single nowait -----\n");
      if (id<=thread && ie==1) {
          printf( "OK\n");
      }else{
          printf( "NG!  SINGLE directive not active!\n");
          printf( "     ie=%d must be 1 \n",ie);
          printf( "     id=%d < %d\n",id, thread);
	  for(i=0;i<10;i++)
	    {
              if(i==0) printf( "     ic=");
	      printf("%d ", ic[i]);
	    }
          printf( "\n");
      }
   exit (0) ;
}
};
int main() {
  Class O(2, 3, 4);
}

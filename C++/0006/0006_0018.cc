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
  int ia, ib[100], ic , it, ier;
  int i, loop=100, loop2=90000, thread=1;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  ia = -1;
  for(i=0;i<loop;i++) ib[i] = 0;
#pragma omp parallel private(it,i)
{
#pragma omp master
  {
    thread = omp_get_num_threads();
    if (thread > 100)
      printf("Error: omp_get_num_threads() > 100\n");
  }

  it = omp_get_thread_num()+1;

#pragma omp sections private(ia)
{
#pragma omp section
{
  ia=0;
  for (i=0; i<loop2; i+=1){ 
    ia=ia+it;
  }
  ib[it]=ib[it]+ia;
}
#pragma omp section
{
  ia=0;
  for (i=0; i<loop2; i+=1){ 
    ia=ia+it;
  }
  ib[it]=ib[it]+ia;
}
#pragma omp section
{
  ia=0;
  for (i=0; i<loop2; i+=1){ 
    ia=ia+it;
  }
  ib[it]=ib[it]+ia;
}
}
}
  ic = 0;
  ier = 0;
  for (i=1; i<=thread; i+=1){ 
    ic= ic + ib[i]/(loop2*i);
  }
  for (i=thread+1; i<loop; i+=1){ 
    if (ib[i]!=0) ier=ier+1;
  }
  printf("-----");
  printf(" parallel private(it)");
  printf(" sections private(ia) ------\n");
  if(ia==-1 && ic==3 && ier==0) {
    printf( "OK\n");
  }else{
    printf( "NG!  SECTIONS PRIVATE clause is not active\n");
    printf( " ia=%d, It must be -1\n",ia);
    printf( " ic=%d,  It must be 3\n",ic);
  }
  exit (0) ;
}
};
int main(){ 
  Class O(3, 4, 3, 2);
}

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif



















int lto_sub_54(){
  int ia, ib[10], ic , it, ier;
  int i, loop=10, loop2=90000, thread=4;
  ia = -1;
  for(i=0;i<loop;i++) ib[i] = 0;
#ifdef _OPENMP
  thread = omp_get_max_threads();
#else
  thread = 1;
#endif
#pragma omp parallel private(it,i)
{
#ifdef _OPENMP
  it = omp_get_thread_num()+1;
#else
  it = 1;
#endif
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

  printf(" parallel private(it)");
  printf(" sections private(ia) ------\n");
  if(ia==-1 && ic==3 && ier==0) {
    printf( "OK\n");
  }else{
    printf( "NG!  SECTIONS PRIVATE clause is not active\n");
    printf( " ia=%d, It must be -1\n",ia);
    printf( " ic=%d,  It must be 3\n",ic);
  }
  return (0) ;
}

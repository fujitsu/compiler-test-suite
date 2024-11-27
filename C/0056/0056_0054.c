#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia, ib[10], ic , it, ier;
      int i, loop=10, loop2=20000, thread=4;
      ia = 100;
      for(i=0;i<10;i++) ib[i] = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel private(it,i)
{
#ifdef _OPENMP
    it = omp_get_thread_num()+1;
#endif
#pragma omp sections firstprivate(ia)
{
#pragma omp section
{
      ib[it]=ib[it]+ia*it;
      for (i=0; i<loop2; i+=1){ 
          ia=ia+it;
      }
}
#pragma omp section
{
      ib[it]=ib[it]+ia*it;
      for (i=0; i<loop2; i+=1){ 
          ia=ia+it;
      }
}
#pragma omp section
{
      ib[it]=ib[it]+ia*it;
      for (i=0; i<loop2; i+=1){ 
          ia=ia+it;
      }
}
}
}

      ic = 0;
      ier = 0;
      for (i=1; i<=thread; i+=1){ 
          ic=ic+ib[i]/(ia*i);
      }
      for (i=thread+1; i<loop; i+=1){ 
          if (ib[i]!=0) ier=ier+1;
      }
      printf("-----  --");
      printf(" parallel private(it)");
      printf(" sections firstprivate(ia) ------\n");
      if(ia==100 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SECTIONS FIRSTPRIVATE clause is not active\n");
         printf( "     ia=%d,  It must be 100\n",ia);
         printf( "     ic=%d,  It must be 3\n",ic);
         printf( "     ier=%d,  It must be 0\n",ier);
      }
      exit (0) ;
      }

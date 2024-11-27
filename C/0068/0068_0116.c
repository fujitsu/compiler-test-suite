#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      void sub(int ia, int ib[10], int it, int loop2)
      {
      int i;
      ia=0;
      for (i=0; i<loop2; i+=1){ 
          ia=ia+it;
      }
      ib[it]=ib[it]+ia;
      return;
      }
int main() { 
      int ia, ib[10], ic , it, ier;
      int i, loop=10, loop2=90000, thread=4;
      ia = -1;
      for(i=0;i<loop;i++) ib[i] = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num()+1;
#endif

#pragma omp sections private(ia)
{
#pragma omp section
      sub (ia, ib, it, loop2);
#pragma omp section
      sub (ia, ib, it, loop2);
#pragma omp section
      sub (ia, ib, it, loop2);
}
}
      ic = 0;
      ier = 0;
      for (i=1; i<=thread; i+=1){ 
          ic=ic + ib[i]/(loop2*i);
      }
      for (i=thread+1; i<loop; i+=1){ 
          if (ib[i]!=0) ier=ier+1;
      }
      printf("-----  --");
      printf(" parallel private(it)");
      printf(" sections private(ia) ------\n");
      if(ia==-1 && ic==3 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SECTIONS PRIVATE clause is not active\n");
         printf( "     ia=%d,  It must be -1\n",ia);
         printf( "     ic=%d,  It must be 3\n",ic);
         printf( "     ier=%d\n", ier);
      }
      exit (0) ;
      }

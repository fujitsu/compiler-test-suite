#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      void sub1(int *ia, int *ib, int ie[50], int loop)
      {
      int i;
      for (i=0; i<loop; i+=1){ 
         *ia = *ia-i*13;
         *ib = *ib+i*3+ie[i];
      }
      return;
      }

      void sub2(int *ia, int ie[50], int loop)
      {
      int i;
      for (i=0; i<loop; i+=1){ 
         *ia = *ia-i-3*ie[i];
      }
      return;
      }

      void sub3(int *ib, int ie[50], int loop)
      {
      int i;
      for (i=0; i<loop; i+=1){ 
         *ib = *ib-i+ie[i];
      }
      return;
      }
int main() { 
      int ia, ib, ic, id, ie[50];
      int i, loop=50;
      ia = 9;
      ib = -7;
      for (i=0; i<loop; i+=1){ 
         ie[i] = 17*i/3+pow(-1,i);
      }
#pragma omp parallel
{
#pragma omp sections reduction(-:ia,ib)
{
      sub1 (&ia, &ib, ie, loop);
#pragma omp section
      sub2 (&ia, ie, loop);
#pragma omp section
      sub3 (&ib, ie, loop);
}
}
      ic = 9;
      id = -7;
      sub1 (&ic, &id, ie, loop);
      sub2 (&ic, ie, loop);
      sub3 (&id, ie, loop);
      printf("-----  --");
      printf(" parallel sections reduction(-:ia,ib) -----\n");
      if(ia==ic && ib==id) {
         printf( "OK\n");
      }else{
         printf( "NG! REDUCTION clause is incorrect\n");
         printf( "     ia=%d,  It must be %d\n",ia,ic);
         printf( "     ib=%d,  It must be %d\n",ib,id);
      }
      exit (0) ;
      }

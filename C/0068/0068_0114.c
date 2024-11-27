#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia, ib, ic, id, ie[50];
      int i, loop=50;
      ia = 9;
      ib = -7;
      for (i=0; i<loop; i+=1){ 
         ie[i] = 17*i/3+pow(-1,i);
      }
#pragma omp parallel private(i)
{
#pragma omp sections reduction(-:ia,ib)
{
#pragma omp section
      for (i=0; i<loop; i+=1){ 
         ia = ia-i*13;
         ib = ib+i*3+ie[i];
      }
#pragma omp section
      for (i=0; i<loop; i+=1){ 
         ia = ia-i-3*ie[i];
      }
#pragma omp section
      for (i=0; i<loop; i+=1){ 
         ib = ib-i+ie[i];
      }
}
}
      ic = 9;
      id = -7;
      for (i=0; i<loop; i+=1){ 
         ic = ic-i*13;
         id = id+i*3+ie[i];
      }
      for (i=0; i<loop; i+=1){ 
         ic = ic-i-3*ie[i];
         id = id-i+ie[i];
      }
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

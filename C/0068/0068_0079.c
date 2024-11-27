#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia, ib, ic, id, ie[50];
      int i, loop=50;
      ia = -1;
      ib = 3;
      for (i=0; i<loop; i+=1){ 
         ie[i] = (fmod(13*i,5)+1)*pow(-1,i);
      }
#pragma omp parallel
{
#pragma omp for reduction(*:ia,ib)
      for (i=0; i<loop; i+=3){ 
         ia = ia * (fmod(i,5));
         ib = ib * ie[i];
      }
}
      ic = -1;
      id = 3;
      for (i=0; i<loop; i+=3){ 
         ic = ic * (fmod(i,5));
         id = id * ie[i];
      }
      printf("-----  --");
      printf(" parallel");
      printf(" do reduction(*:ia,ib) -----\n");
      if(ia==ic && ib==id) {
         printf( "OK\n");
      }else{
         printf( "NG! REDUCTION(*) clause is incorrect\n");
         printf( "     ia=%d,  It must be %d\n",ia,ic);
         printf( "     ib=%d,  It must be %d\n",ib,id);
      }
      exit (0) ;
      }

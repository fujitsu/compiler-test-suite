#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      int sub(int ia,int ie[50],int i)
      {
      ia = ia-i*13;
      return ia;
      }
      int sub2(int ib,int ie[50],int i)
      {
      ib = ib+i*3+ie[i];
      return ib;
      }
int main() { 
      int ia, ib, ic, id, ie[50];
      int i, loop=50;
      ia = 9;
      ib = -7;
      for (i=0; i<loop; i+=1){ 
         ie[i] = fmod(17*i,32)*pow(-1,i);
      }
#pragma omp parallel
{
#pragma omp for reduction(-:ia,ib)
      for (i=0; i<loop; i+=1){ 
          ia=sub (ia, ie, i);
          ib=sub2 (ib, ie, i);
      }
}
      ic = 9;
      id = -7;
      for (i=0; i<loop; i+=1){ 
         ic = ic-i*13;
         id = id+i*3+ie[i];
      }
      printf("-----  --");
      printf(" parallel");
      printf(" for reduction(-:ia,ib) -----\n");
      if(ia==ic && ib==id) {
         printf( "OK\n");
      }else{
         printf( "NG!  REDUCTION(-) clause is incorrect\n");
         printf( "     ia=%d,  It must be %d",ia,ic);
         printf( "     ib=%d,  It must be ",ib,id);
      }
      exit (0) ;
      }

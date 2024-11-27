#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[100], ib[100], ic[100], id[100];
      int it[10], iw, iw2, iw3, ier;
      int i,j,k, loop=100, loop2=5, ith=4;

      for (i=0; i<loop; i+=1){ 
         ia[i]=(fmod(i,3))*pow(-1,i);
      }
#pragma omp parallel
{
#pragma omp for firstprivate(ia) lastprivate(ia) private(iw)
      for (i=0; i<loop; i+=1){ 

         iw=i;
         ic[i]=ia[iw]+(i+1);
         ia[iw]=ia[iw]+iw+1;
      }
}
      ith=omp_get_max_threads();
      iw=loop/ith;
      iw2=fmod(loop,ith);
      it[0]=1;
      for (i=0; i<ith; i+=1){ 
         iw3=iw;
         if(i<=iw2)iw3=iw3+1;
         it[i+1]=it[i]+iw3;
      }
      for (i=0; i<loop; i+=1){ 
         for (j=0; j<ith; j+=1){ 
            if(i==it[j]) {

               for (k=0; k<loop; k+=1){ 
                  ib[k]=(fmod(k,3))*pow(-1,k);
               }
            }
         }

         iw=i;
         id[i]=ib[iw]+(i+1);
         ib[iw]=ib[iw]+iw+1;
      }
      ier = 0;

      for (i=1; i<loop; i+=1){ 
         if (ia[i]!=ib[i]) ier=ier+1;
      }
      for (i=1; i<loop; i+=1){ 
         if (ic[i]!=id[i]) ier=ier+1;
      }
      printf( "-----  --");
      printf( " parallel");
      printf( " for firstprivate(ia) lastprivate(ia)");
      printf( " private(iw) -----\n");
      if(ier==2) {
	printf( "OK\n");
      
      }else if (ith == 1 && ier == 0){
	printf( "OK\n");	
      }else{
         printf( "NG!  LASTPRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
         printf( "     ia=%d\n",ia);
         printf( "     ib=%d\n",ib);
         printf( "     ic=%d\n",ic);
         printf( "     id=%d\n",id);
      }
      exit (0) ;
      }

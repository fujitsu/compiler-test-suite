#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib[50], ig[2][50], ih[2][50];
      int ic, id, il, it, ier[2], i, k;
      int   thread=4, chunk=1,st=0;

     memset(ia,0,sizeof(ia));     
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel
{
#pragma omp for schedule(guided,chunk)
      for(i=st;i< 30;i++){
#ifdef _OPENMP
       ia[i] = omp_get_thread_num() + 1;
#endif
      }
}
      memset(ig,0,sizeof(ig));
    for(k=0;k<2;k++) {        
      il=30;
      ic=1;
      do {
         if( k==0 ) {
           it=il/(thread*2);  
         }
         else {
           it=il/thread;
           if(il%thread!=0) it=it+1 ;
         }
         if(it<chunk) {
            if(il>chunk) {
               it=chunk;
            }else{
               it=il;
            }
         }
         ig[k][ic]=it;
         il=il-it;
         ic=ic+1;
      }while(il>0);
    }                         
      memset(ib,0,sizeof(ib));
      ic=-1;
      id=0;
      for (i=0; i<30; i+=1){ 
         if (ia[i]!=id || ic==-1) {
             ic=ic+1;
             id=ia[i];
         }
         ib[ic]=ib[ic]+1;
      }
      memset(ih,0,sizeof(ih));
      memset(ier,0,sizeof(ier));
    for(k=0;k<2;k++) {        
      ic=1;
      id=1;
      do {
         do {
            ih[k][ic-1]=ih[k][ic-1]+ig[k][id-1];
            id=id+1;
         }while(ib[ic-1]>ih[k][ic-1] && id<=30);
         ic=ic+1;
      }while(ib[ic-1]!=0 && ic<=30);
      for (i=0; i<30; i+=1){ 
          if(ib[i]!=ih[k][i]) ier[k]=ier[k]+1 ;
      }
    }                         
      printf( "      parallel for schedule(guided,chunk=1) -----");
      if(ier[0]==0 || ier[1]==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE(GUIDED) clause is incorrect!");
         printf( "     loop=",30," thread=",thread," chunk=",chunk);
         printf( "     ier=%d %d\n",ier[0],ier[1]);
         printf( "     ia="); for(i=0;i<50;i++) printf("%d ",ia[i]); printf("\n");
         printf( "     ib="); for(i=0;i<50;i++) printf("%d ",ib[i]); printf("\n");
         printf( "     ih="); for(k=0;k<2;k++) for(i=0;i<50;i++) printf("%d ",ih[i]); printf("\n");
         printf( "     ig="); for(k=0;k<2;k++) for(i=0;i<50;i++) printf("%d ",ig[i]); printf("\n");
      }
      exit (0) ;
      }

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif
extern  int  it;
extern  char sa[11];
int main()
{
      int  ier;
      int  loop = 10, thread=4;
      char sb[10][10],sc[10];
      int  i,j;

      strcpy(sa,"abc       ");
      for(i=0;i<10;i++)
        {
          strcpy(sb[i],"          ");
        }

#ifdef _OPENMP
    thread = omp_get_max_threads();
    if (thread > 10){
      omp_set_num_threads(10);
      thread=omp_get_max_threads();
    }
#endif

#pragma omp parallel firstprivate(sa) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() ;
#endif
      sb[it][0] = sa[0] ;
      sb[it][1] = sa[1] ;
      sb[it][2] = sa[2] ;
      sb[it][3] = 0 +'0';
      sb[it][4] = (it+1) +'0';

      sa[0] = 0 +'0';
      sa[1] = (it+1) +'0';
}


      ier = 0;
      for (i=0; i<thread; i++){
         strncpy(sc,sa, sizeof(sc));
         sc[3] = (i+1) +'0';
         if (strncmp(sb[i],sc,3) != 0){
            ier=ier+1;
         }
      }
      for (i=thread; i<loop; i+=1){
         if (strncmp(sb[i],"          ",10) != 0){
                 ier=ier+1;
         }
      }
      printf( "----- omp_PARALLEL_007C.c --");
      printf( " parallel firstprivate(sa) private(it) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "ier=%d\n", ier);
         printf( "     sa=%s|\n",sa);
         printf( "     sb=%s|\n",sb);
      }
   exit (0) ;
}

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

typedef struct{
         float real,imag;
}COMPLEX8;
typedef struct {
         int        tii;
         float      trr;
         COMPLEX8   tcc;
         char       tss[4];
} type;
int main()
{
      int ia[10], ier;
      int  thread=4, loop=10;
      int i;
      type  tt1;


      for(i=0;i<10;i++)
	{
          ia[i] = 0;
	}
      tt1.tii = 0;
      tt1.trr = 0.0;
      tt1.tcc.real = 0.0;
      tt1.tcc.imag = 0.0;
      strncpy(tt1.tss,"str",3);

#ifdef _OPENMP
    thread=omp_get_max_threads();
#endif

#pragma omp parallel  private(tt1)
{
      tt1.tii=omp_get_thread_num();
      tt1.trr = tt1.tii * 11.1;
      tt1.tcc.real = tt1.tii*1.1;
      tt1.tcc.imag = (-1)*tt1.tii*0.1;
      
      switch (tt1.tii)
	{
          case 0: strcpy(tt1.tss,"   0"); break;
          case 1: strcpy(tt1.tss,"   1"); break;
          case 2: strcpy(tt1.tss,"   2"); break;
          case 3: strcpy(tt1.tss,"   3"); break;
	}
      ia[tt1.tii]=tt1.tii;
}

      ier = 0;
      if(tt1.tii!=0) ier=ier+1 ;
      if(tt1.trr !=0.) ier=ier+1 ;
      if((tt1.tcc.real != (0.0))  &&
         (tt1.tcc.imag != (0.0))) ier=ier+1 ;
      if(strncmp(tt1.tss,"str",3) != 0) ier=ier+1 ;
      for (i=0; i<thread; i+=1){
         if(ia[i] != i) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){
         if(ia[i] != 0) ier=ier+1;
      }
      printf( "-----  --");
      printf( " parallel private(tt1) ------\n");
      if ( ier==0 ) {
         printf("OK\n");
      }else{
         printf("NG!  PRIVATE clause is not active!\n");
         printf(" ier=%d\n",ier);
         printf("     tt1=%d",tt1.tii);
         printf(" %f",tt1.trr);
         printf(" %f",tt1.tcc.real);
         printf(" %f",tt1.tcc.imag);
         printf(" %s\n",tt1.tss);
	 for(i=0;i<10;i++)
	   {
	     if(i==0) printf("ia=%d",ia[i]);
	   }
         printf("\n");
      }
   exit (0) ;
}

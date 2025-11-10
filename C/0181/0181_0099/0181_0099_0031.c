#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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
} type ;


int lto_sub_31()
{
      int  ib[10], ith, ier;
      int  loop=10, thread=4;
      type ty1, ty2[10];
      static int  i;

      for(i=0;i<loop;i++)
	{
          ib[i] = 0;
	}
      ty1.tii = 7;
      ty1.trr = 5.1;
      ty1.tcc.real = 1.2;
      ty1.tcc.imag = 9.1;
      strcpy(ty1.tss,"str");

      for (i=0; i<loop; i+=1)
	{
          ty2[i].tii = 0;
          ty2[i].trr = 0.0;
          ty2[i].tcc.real = 0.0;
          ty2[i].tcc.imag = 0.0;
          strcpy(ty2[i].tss,"   ");
        }
#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 1;
#endif

#pragma omp parallel firstprivate(ty1) private(ith)
   {
#ifdef _OPENMP
    ith = omp_get_thread_num() ;
#else
    ith = 0;
#endif
      ty2[ith].tii      = ty1.tii;
      ty2[ith].trr      = ty1.trr;
      ty2[ith].tcc.real = ty1.tcc.real;
      ty2[ith].tcc.imag = ty1.tcc.imag;
      ty2[ith].tss[0]   = ty1.tss[0] ;
      ty2[ith].tss[1]   = ty1.tss[1] ;
      ty2[ith].tss[2]   = ty1.tss[2] ;
      ty1.tii      = 0;
      ty1.trr      = 0.0;
      ty1.tcc.real = 0.0;
      ty1.tcc.imag = 0.0;
      strcpy(ty1.tss,"   ");

      ib[ith]=(ith + 1);
   }

      ier = 0;
      for (i=0; i<thread; i++)
	{
          if(ty2[i].tii != ty1.tii) ier=ier+1 ;
          if(ty2[i].trr != ty1.trr) ier=ier+1 ;
          if((ty2[i].tcc.real != ty1.tcc.real) &&
             (ty2[i].tcc.imag != ty1.tcc.imag)) ier=ier+1 ;
          if(strncmp(ty2[i].tss,ty1.tss,3) != 0 ) ier=ier+1 ;
          if(ib[i] != (i+1)) ier=ier+1 ;
        }
      for (i=thread; i<loop; i++)
	{
          if(ty2[i].tii != 0) ier=ier+1 ;
          if(ty2[i].trr != 0.0) ier=ier+1 ;
          if((ty2[i].tcc.real != 0.0) &&
             (ty2[i].tcc.imag != 0.0)) ier=ier+1 ;
          if(strncmp(ty2[i].tss,"   ",3) != 0 ) ier=ier+1 ;
          if(ib[i] !=0) ier=ier+1 ;
        }

      printf( " parallel firstprivate(ty1) private(ith) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         for (i=0; i<loop; i++)
	   {
            printf("     i=%d  ty2[%d]= ",i,i);
	    printf("%d %f (%f,%f) %s\n",
	      ty2[i].tii,ty2[i].trr,ty2[i].tcc.real,ty2[i].tcc.imag,ty2[i].tss);
         }
	 printf("\n");
         printf( "     ier=%d\n",ier);
         printf( "     ty1=%d %f (%f,%f) %s\n",
	      ty1.tii, ty1.trr, ty1.tcc.real, ty1.tcc.imag, ty1.tss);
         for (i=0; i<loop; i++)
	   {
             if(i==0)printf( "     ib=");
	     printf("%d ",ib[i]);
	   }
	 printf("\n");
      }
   return (0) ;
}

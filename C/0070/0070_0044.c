#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

typedef struct{
    float real,imag;
} COMPLEX8;
typedef struct {
    int        tii;
    float      trr;
    COMPLEX8   tcc;
    char       tss[4];
} type ;
int main()
{
      int      ic, ier;
      COMPLEX8 cb[50];
      char     ss[4];
      char     sss[1];
      int      loop=50, loop5=5;
      type     ty1[5];
      int      j;

      strcpy(sss,"-");

      for (j=0; j<loop; j++)
	{
          cb[j].real = 0.0;
          cb[j].imag = 0.0;
	}
      for (j=0; j<loop5-1; j++)
      {
         
	 strcpy(ss,"   ");
	 ss[3] = (j+1) +'0';

         ty1[j].tii = (j+1) ;
         ty1[j].trr = (j+1)*0.0;
         ty1[j].tcc.real =(j+1)*0.0;
         ty1[j].tcc.imag =(j+1)*0.0;
         strcpy(ty1[j].tss, ss);
      }

#pragma omp parallel
{
#pragma omp for private(ty1,ic,ss)
      for (j=0; j<loop; j++)
      {
         
	 ss[0] = 0 + '0';
	 if((j+1) < 10)
	   {
	     ss[1] = 0 + '0';
	     ss[2] = sss[0];
	     ss[3] = (j+1) + '0';
	   }
	 else
	   {
	     ss[1] = sss[0];
	     ss[2] = ((j+1) / 10) +'0';
	     ss[3] = ((j+1) % 10) +'0';
	   }

         ic = ((j+1)%loop5);
         ty1[ic].tii = (j+1)*(-1);
         ty1[ic].trr = ((j+1)*(-1))*0.0 ;
         ty1[ic].tcc.real = (j+1)*(-1)*0.0 ;
         ty1[ic].tcc.imag = (j+1)*(-1)*0.0 ;
         ty1[ic].tss[0] = ss[0];
         ty1[ic].tss[1] = ss[1];
         ty1[ic].tss[2] = ss[2];
         ty1[ic].tss[3] = ss[3];

         cb[j].real = ty1[ic].tii + ty1[ic].tcc.real;
         cb[j].imag = ty1[ic].trr + ty1[ic].tcc.imag;
      }
}

      ier = 0;
      for (j=0; j<loop; j++)
      {
          if((cb[j].real != (j+1)*(-2)*0.0) &&
             (cb[j].imag != (j+1)*(-2)*0.0)) {
             ier=ier+1;
             printf( "E  j=%d cb[%d]=(%f,%f)  must be %f\n"
		     ,j,j,cb[j].real,cb[j].imag,j*2.0);
          }
      }
      for (j=0; j<loop5-1; j++){
         if(ty1[j].tii != (j+1)) ier=ier+1 ;
         if(ty1[j].trr != (j+1)*0.0) ier=ier+1 ;
         if((ty1[j].tcc.real != (j+1)*0.0) &&
            (ty1[j].tcc.imag != (j+1)*0.0)) ier=ier+1 ;
         
	 strcpy(ss,"   ");
	 if((j+1) <10)
	   {
	     ss[3] = (j+1) +'0';
	   }
	 else
	   {
	     ss[2] = ((j+1) /10) +'0';
	     ss[3] = ((j+1) %10) +'0';
	   }
         if(strncmp(ty1[j].tss,ss,4) != 0 ) ier=ier+1;
      }
      printf("\n");
      printf( "-----  --");
      printf( " parallel");
      printf( " do private(ty1,ic) ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
         for (j=0; j<loop5-1; j++)
	 {
            printf( "     j=%d ty1[%d]=%d %f (%f,%f) %s\n",j,j,ty1[j].tii,
		    ty1[j].trr, ty1[j].tcc.real, ty1[j].tcc.imag, ty1[j].tss);
         }
      }
   exit (0) ;
}

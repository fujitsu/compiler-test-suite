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
} type;
int main()
{
      int      ier;
      COMPLEX8 cb[50];
      int      loop=50;
      char     ss[4];
      type     ty1;
      int      j;

      for(j=0;j<50;j++)
	{
          cb[j].real = 0.0;
          cb[j].imag = 0.0;
	}

      
      ty1.tii = 0;
      ty1.trr = 0.0;
      ty1.tcc.real = 0.0;
      ty1.tcc.imag = 0.0;
      strcpy(ty1.tss,"str");

#pragma omp parallel
{
#pragma omp for private(ty1,ss)
      for (j=0; j<loop; j++)
      {
         
	 if(j < 10)
	   {
	     ss[0] = 0 +'0';
	     ss[1] = 0 +'0';
	     ss[2] = 0 +'0';
	     ss[3] = j +'0';
	   }
	 else
	   {
	     ss[0] = 0 +'0';
	     ss[1] = 0 +'0';
	     ss[2] = ((j+1)/10) +'0';
	     ss[3] = ((j+1)%10) +'0';
	   }
         ty1.tii = j;
         ty1.trr = j*0.0;
         ty1.tcc.real = j*0.0;
         ty1.tcc.imag = j*0.0;
	 ty1.tss[0] = ss[0];
	 ty1.tss[1] = ss[1];
	 ty1.tss[2] = ss[2];
	 ty1.tss[3] = ss[3];

         cb[j].real = ty1.tii + ty1.tcc.real;
         cb[j].imag = ty1.trr + ty1.tcc.imag;
      }
}

      ier = 0;
      for (j=0; j<loop; j++){
          if((cb[j].real != j*2*0.0) &&
             (cb[j].imag != j*2*0.0))
	  {
             ier=ier+1;
             printf( "E  j=%d cb[%d]=(%f,%f) must be %f",j,j,cb[j].real,cb[j].imag,j*2.0);
          }
      }
      if(ty1.tii != 0) ier=ier+1 ;
      if(ty1.trr != 0.0) ier=ier+1 ;
      if((ty1.tcc.real != 0.0) &&
         (ty1.tcc.imag != 0.0)) ier=ier+1 ;
      if(strncmp(ty1.tss,"str",3) != 0) ier=ier+1 ;
      printf( "-----  --");
      printf( " parallel");
      printf( " do private(ty1) ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
         printf( "     ty1=%d %f (%f,%f) %s"
		 ,ty1.tii,ty1.trr,ty1.tcc.real,ty1.tcc.imag,ty1.tss);
      }
   exit (0) ;
}

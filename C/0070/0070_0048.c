#include <stdio.h>
#include <stdlib.h>
#include <string.h>
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
} type;
int main()
{
      int      ier;
      COMPLEX8 cb[50], cc;
      char     ss[4];
      int      loop=50;
      type     ty1[50];
      int      i;

      for(i=0;i<50;i++)
	{
          cb[i].real = 0.0;
          cb[i].imag = 0.0;
	}
      for(i=0; i<loop; i++)
	{
          
	  ss[0] = 0 +'0';
	  ss[1] = 0 +'0';
	  if((i+1) < 10)
	    {
	      ss[2] = 0 +'0';
	      ss[3] = (i+1) +'0';
	    }
	  else
	    {
	      ss[2] = ((i+1) / 10) +'0';
	      ss[3] = ((i+1) % 10) +'0';
	    }
          ty1[i].tii      = (i+1);
          ty1[i].trr      = (-1)*(i+1) ;
          ty1[i].tcc.real = (i+1) ;
          ty1[i].tcc.imag = (-1)*(i+1) ;
          ty1[i].tss[0] = ss[0];
          ty1[i].tss[1] = ss[1];
          ty1[i].tss[2] = ss[2];
          ty1[i].tss[3] = ss[3];
        }

#pragma omp parallel
{
#pragma omp for firstprivate(ty1,ss)
      for(i=0; i<loop; i++)
	{
          cb[i].real = ty1[i].tii + ty1[i].tcc.real;
          cb[i].imag = ty1[i].trr + ty1[i].tcc.imag;
          
	  ss[0] = 0 +'0';
	  if((i+1)*10 < 100)
	    {
	      ss[1] = 0 +'0';
	      ss[2] = (i+1) +'0';
	    }
	  else
	    {
	      ss[1] = ((i+1)*10 / 100) +'0';
	      ss[2] = ((i+1)*10 % 100) +'0';
	    }
	  ss[3] = 0 +'0';
          ty1[i].tii      = (i+1)*10;
          ty1[i].trr      = (i+1)*10.0 ;
          ty1[i].tcc.real = (i+1)*10.0 ;
          ty1[i].tcc.imag = (i+1)*(-10.0) ;
          ty1[i].tss[0] = ss[0];
          ty1[i].tss[1] = ss[1];
          ty1[i].tss[2] = ss[2];
          ty1[i].tss[3] = ss[3];
      }
}

      ier = 0;
      for(i=0; i<loop; i++)
	{
          cc.real = ty1[i].tii + ty1[i].tcc.real;
          cc.imag = ty1[i].trr + ty1[i].tcc.imag;
         if((cb[i].real != cc.real) &&
            (cb[i].imag != cc.imag))
	   {
             ier=ier+1;
             printf( "E  i=%d cb[%d]=%f,%f must be %f,%f\n",i,i,cb[i].real,cb[i].imag,cc.real,cc.imag);
           }
        }
      for(i=0; i<loop; i++)
	{
          
	  ss[0] = 0 +'0';
	  ss[1] = 0 +'0';
	  if((i+1) < 10)
	    {
	      ss[2] = 0 +'0';
	      ss[3] = (i+1) +'0';
	    }
	  else
	    {
	      ss[2] = ((i+1) / 10) +'0';
	      ss[3] = ((i+1) % 10) +'0';
	    }
          if(strncmp(ty1[i].tss,ss,4) != 0)
	    {
              ier=ier+1;
              printf( "E  i=%d ty1[%d].tss=%s\n",i,i,ty1[i].tss);
            }
        }
      printf( "-----  --");
      printf( " parallel");
      printf( " do firstprivate(ty1) ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
      }
   exit (0) ;
}

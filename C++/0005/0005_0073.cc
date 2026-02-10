#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif
#ifdef __cplusplus
      typedef struct COMPLEX8{
        float real,imag;
        COMPLEX8()                        { real=imag=0; }
        COMPLEX8(COMPLEX8 &r)             { real=r.real; imag=r.imag; }
        COMPLEX8 & operator =(COMPLEX8 &r){ real=r.real; imag=r.imag; return *this; }
        ~COMPLEX8(){ }
      }COMPLEX8;
#else
      typedef struct{
	float real,imag;
      }COMPLEX8;
#endif

#ifdef __cplusplus
      typedef struct type{
        int        tii;
        float      trr;
        COMPLEX8   tcc;
        char       tss[4];

        type()                    { tii=trr=tcc.real=tcc.imag=0;
				    strcpy(tss,"   "); }
        type(type &r)             { tii=r.tii;
				    trr=r.trr;
				    tcc.real=r.tcc.real;
				    tcc.imag=r.tcc.imag;
				    strcpy(tss,r.tss); }
        type & operator =(type &r){ tii=r.tii;
				    trr=r.trr;
				    tcc.real=r.tcc.real;
				    tcc.imag=r.tcc.imag;
				    strcpy(tss,r.tss);
				    return *this; }
        ~type(){ }
      }type;
#else
typedef struct {
    int        tii;
    float      trr;
    COMPLEX8   tcc;
    char       tss[4];
} type ;
#endif
int main()
{
      int      ier;
      COMPLEX8 cb[50];
      char     ss[4];
      int      loop=50;
      type     ty1;
      int      j;

      for(j=0;j<50;j++)
	{
          cb[j].real = 0.0;
          cb[j].imag = 0.0;
	}
      ty1.tii      = 7 ;
      ty1.trr      = 3.5 ;
      ty1.tcc.real = 1.9 ;
      ty1.tcc.imag = 8.1 ;
      strcpy(ty1.tss, "str") ;

#pragma omp parallel
{
#pragma omp for lastprivate(ty1,ss)
      for(j=0; j<loop; j++)
	{
          
	  ss[0] = 0 +'0';
	  ss[1] = 0 +'0';
	  if((j+1) < 10)
	    {
	      ss[2] = 0 +'0';
	      ss[3] = (j+1) +'0';
	    }
	  else
	    {
	      ss[2] = ((j+1) / 10) +'0';
	      ss[3] = ((j+1) % 10) +'0';
	    }
          ty1.tii      = (j+1) ;
          ty1.trr      = (j+1)*0.0 ;
          ty1.tcc.real = (j+1)*0.0 ;
          ty1.tcc.imag = (j+1)*0.0 ;
          ty1.tss[0]   = ss[0];
          ty1.tss[1]   = ss[1];
          ty1.tss[2]   = ss[2];
          cb[j].real = ty1.tii + ty1.tcc.real;
          cb[j].imag = ty1.trr + ty1.tcc.imag;
        }
}

      ier = 0;
      for(j=0; j<loop; j++)
	{
          if((cb[j].real != (j+1)*2*0.0) &&
             (cb[j].imag != (j+1)*2*0.0))
	    {
             ier=ier+1;
             printf( "E  j=%d cb[%d]=%f,%f must be %f\n",j,j,cb[j].real,cb[j].imag,j*2.0);
            }
        }
      if(ty1.tii != loop)ier=ier+1 ;
      if(ty1.trr != (loop-1)*0.0)ier=ier+1 ;
      if((ty1.tcc.real != (loop-1)*0.0) &&
         (ty1.tcc.imag != (loop-1)*0.0))ier=ier+1 ;
      
      ss[0] = 0 +'0';
      ss[1] = 0 +'0';
      if((loop) < 10)
        {
          ss[2] = 0 +'0';
          ss[3] = (loop) +'0';
        }
      else
        {
          ss[2] = ((loop) / 10) +'0';
          ss[3] = ((loop) % 10) +'0';
        }
      if(strncmp(ty1.tss,ss,3)!=0) ier=ier+1;
      printf( " parallel");
      printf( " do lastprivate(ty1) ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
         printf( "     ty1=%d %f (%f,%f) %s\n",ty1.tii,ty1.trr,ty1.tcc.real,ty1.tcc.imag,ty1.tss);
      }
   exit (0) ;
}

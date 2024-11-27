#include <stdio.h>
#include <stdlib.h>
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
	int        i;
        int        tii[5];
        float      trr[5];
        COMPLEX8   tcc[5];
        type() {
	    for(i=0;i<5;i++){ tii[i]=trr[i]=tcc[i].real=tcc[i].imag=0; }
	}
        type(type &r) {
	    for(i=0;i<5;i++){ tii[i]=r.tii[i];
			      trr[i]=r.trr[i];
			      tcc[i].real=r.tcc[i].real;
			      tcc[i].imag=r.tcc[i].imag; }
	}
        type & operator =(type &r){
	    for(i=0;i<5;i++){ tii[i]=r.tii[i];
			      trr[i]=r.trr[i];
			      tcc[i].real=r.tcc[i].real;
			      tcc[i].imag=r.tcc[i].imag; }
	    return *this; 
	}
        ~type(){ }
      }type;
#else
typedef struct {
    int        tii[5];
    float      trr[5];
    COMPLEX8   tcc[5];
} type ;
#endif
int main()
{
      int      ic, ier;
      COMPLEX8 cb[50], cc;
      int      loop=50, loop5=5;
      type     ty1, ty2;
      int      i;

#pragma omp parallel
{
#pragma omp for lastprivate(ty1,ic)
      for(i=0; i<loop; i++)
	{
          ic=((i+1)%loop5);
          ty1.tii[ic]      = (i+1);
          ty1.trr[ic]      = (-1)*(i+1)*0.0;
          ty1.tcc[ic].real = (i+1)*0.0 ;
          ty1.tcc[ic].imag = (-1)*(i+1)*0.0 ;
          cb[i].real = ty1.tii[ic] + ty1.tcc[ic].real;
          cb[i].imag = ty1.trr[ic] + ty1.tcc[ic].imag;
        }
}

      ier = 0;
      for (i=0; i<loop; i++)
	{
          ic=((i+1)%loop5);
          ty2.tii[ic]      = (i+1);
          ty2.trr[ic]      = (-1)*(i+1)*0.0;
          ty2.tcc[ic].real = (i+1)*0.0;
          ty2.tcc[ic].imag = (-1)*(i+1)*0.0;
          cc.real = ty2.tii[ic] + ty2.tcc[ic].real;
          cc.imag = ty2.trr[ic] + ty2.tcc[ic].imag;
          if((cb[i].real != cc.real) &&
             (cb[i].imag != cc.imag))
	    {
              ier=ier+1;
              printf( "E  i=%d cb[i]=%f,%f must be %f,%f\n",i,cb[i].real,cb[i].imag,cc.real,cc.imag);
            }
        }
      for(i=0; i<loop5; i++)
	{
          if(ty1.tii[ic] != ty2.tii[ic]) ier=ier+1 ;
          if(ty1.trr[ic] != ty2.trr[ic]) ier=ier+1 ;
          if((ty1.tcc[ic].real != ty2.tcc[ic].real) &&
             (ty1.tcc[ic].imag != ty2.tcc[ic].imag)) ier=ier+1 ;
        }
      printf( "-----  --");
      printf( " parallel");
      printf( " do lastprivate(ty1,ic) ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active!\n");
         for(i=0; i<loop5; i++)
	   {
             if(i==0) printf( "     ty1.tii[i]=");
             printf( "%d ",ty1.tii[i]);
	   }
         printf( "\n");
         for(i=0; i<loop5; i++)
	   {
             if(i==0) printf( "     ty2.tii[i]=");
             printf( "%d ",ty2.tii[i]);
	   }
         printf( "\n");

         for(i=0; i<loop5; i++)
	   {
             if(i==0) printf( "     ty1.trr[i]=");
             printf( "%f ",ty1.trr[i]);
	   }
         printf( "\n");
         for(i=0; i<loop5; i++)
	   {
             if(i==0) printf( "     ty2.trr[i]=");
             printf( "%f ",ty2.trr[i]);
	   }
         printf( "\n");

         for(i=0; i<loop5; i++)
	   {
             if(i==0) printf( "     ty1.tcc[i]=");
             printf( "%f,%f ",ty1.tcc[i].real,ty1.tcc[i].imag);
	   }
         printf( "\n");
         for(i=0; i<loop5; i++)
	   {
             if(i==0) printf( "     ty2.tcc[i]=");
             printf( "%f,%f ",ty2.tcc[i].real,ty2.tcc[i].imag);
	   }
         printf( "\n");
         printf( "     ier=%d\n",ier);
      }
   exit (0) ;
}

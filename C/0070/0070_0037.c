#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif




void sub(int *, int *, int);
int main()
{
      int  ia[50], ib[50], iw[50], ier;
      int  loop=50;
      int  i;

      for(i=0; i<loop; i++)
	{
          ib[i]=i*100;
          iw[i]=((i+1)%5);
        }

#pragma omp parallel firstprivate(ib,iw)
   {
      sub(ib, iw, loop);
#pragma omp for
      for(i=0; i<loop; i++)
	{
          ia[i] = ib[i];
        }

   }
      ier=0;
      for(i=0; i<loop; i++)
	{
          if(ib[i]!=i*100)
	    {
              ier=ier+1;
              printf( "2  i=%d ib[%d]=%d must be %d\n",i,i,ib[i],i*100);
            }
        }
      sub (ib, iw, loop);
      for(i=0; i<loop; i++)
	{
          if(ia[i]!=ib[i])
	    {
              ier=ier+1;
              printf( "E  i=%d ia[%d]=%d ib[%d]=%d\n",i,i,ia[i],i,ib[i]);
            }
        }
      printf( "-----  --");
      printf( " parallel (forall) -----\n");
      if(ier == 0) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL Directive is not active!\n");
         printf( "      ier=%d\n", ier);
	 for(i=0;i<50;i++)
	   {
	     if(i==0) printf( "      ia=");
	     printf( "%d ",ia[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}

void sub(int *ib, int *iw, int loop)
{
      int i,j;
      for(i=1; i<loop;i++)
      {
         for(j=1; j<loop;j++)
           if(iw[j] == 0) iw[j] = iw[j] +11;
         ib[i]=ib[i]*iw[i];
      }
   return;
}

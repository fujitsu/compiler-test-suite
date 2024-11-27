#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

void sub(int *, int *, int *, int) ;
int main()
{
      int  ia[50], ib[50], ic[50], ier;
      int  loop=50;
      int  i;

      for(i=0;i<50;i++)
	{
          ia[i]=0;
          ib[i]=0;
          ic[i]=0;
	}

      for (i=0; i<loop; i++)
        {
          if(((i+1)%3)==0) ib[i]=(i+1);
        }
      sub (ia, ib, ic, loop);

      ier=0;
      for (i=0; i<loop; i++)
      {
         if (ia[i] != ib[i]) ier=ier+1;
         if (ib[i]==0 && ic[i]==0) ier=ier+1;
      }
      printf( "-----  -- parallel -----\n");
      if(ier == 0) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL Directive is not active!\n");
         printf( "      ier=%d\n", ier);
	 for(i=0;i<50;i++)
	   {
	     if(i==0) printf( "      ia=");
             printf( "%d ", ia[i]);
	   }
         printf( "\n");
	 for(i=0;i<50;i++)
	   {
	     if(i==0) printf( "      ic=");
             printf( "%d ", ic[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}

void sub(int *ia, int *ib, int *ic, int loop)
{
      int  i;

      for(i=0;i<loop;i++)
	{
	  if(ib[i]!=0)
	    {
#pragma omp parallel
   {
            ia[i]=ib[i];
   }
	    }
	}
      for(i=0;i<loop;i++)
	{
	  if(ib[i]==0)
	    {
#pragma omp parallel
   {
         ic[i]=1;
   }
	    }
        }
   return;
}

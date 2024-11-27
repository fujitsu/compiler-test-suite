#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

void sub(int *, int *, int) ;
int main()
{
      int ia[50], ib[50], ic[50], ier;
      int  loop=50;
      int  i;

      for(i=0;i<50;i++)
	{
          ia[i]=0;
	}

      for(i=0; i<loop; i++)
	{
          if(((i+1)%2) == 0)
	    {
              ib[i]=0;
              ic[i]= (i+1)*100;
            }
	  else
	    {
              ib[i]=1;
              ic[i]=(i+1);
            }
        }
#pragma omp parallel firstprivate(ib)
   {
      sub (ib, ic, loop);
#pragma omp for
      for(i=0; i<loop; i++)
	{
          ia[i] = ib[i];
        }
   }
      ier=0;
      for (i=0; i<loop; i++)
	{
          if(ib[i] != ((i+1)%2) )
	    {
              ier=ier+1;
              printf("2  i=%d ib[%d]=%d must be %d\n",i,i,ib[i],((i+1)%2));
            }
        }
      for (i=0; i<loop; i++)
        {
          if( ((i+1)%2) == 0)
	    {
              if(ia[i] != ib[i])
		{
                  ier=ier+1;
                  printf( "E  i=%d ia[%d]=%d ib[%d]=%d\n",i,i,ia[i],i,ib[i]);
                }
            }
	  else
	    {
              if(ia[i] != ic[i])
		{
                  ier=ier+1;
                  printf( "E  i=%d ia[%d]=%d ic[%d]=%d\n",i,i,ia[i],i,ic[i]);
                }
            }
        }
      printf( "-----  --");
      printf( " parallel (where) -----\n");
      if(ier == 0) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL Directive is not active!\n");
         printf( "      ier=%d\n", ier);
	 for(i=0;i<50;i++)
	   {
	     if(i==0)printf( "      ia=");
	     printf( "%d ",ia[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}

void sub(int *ib, int *ic, int loop)
{
   int  i;

   for(i=0;i<loop;i++)
     {
       if(ib[i]==1) ib[i]=ic[i];
     }
   return;
}

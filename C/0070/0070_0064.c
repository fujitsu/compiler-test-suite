#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[90][90], ib[90][90][90];
      int ie[90], ier;
      int  loop=90;
      int  i, j, k;

      for(j=0; j<loop; j++)
	{
          for(i=0; i<loop; i++)
	    {
              ia[j][i] = 0;
              for(k=0; k<loop; k++)
	        {
                  ib[j][i][k] = 0;
		}
	    }
	}
      for(i=0; i<loop; i++)
      {
          ie[i] = fmod((i+1)*(pow((-1),((i+1)-((i+1)/2)*2))),9);
          if(ie[i]>=0) ie[i]=ie[i]+1;
      }
#pragma omp parallel private(j)
{
      for(j=0; j<loop; j++)
	{
#pragma omp for private(i)
          for(i=0; i<loop; i++)
	    {
              ia[i][j] = (i+1)*(j+1)-ie[j];
            }
#pragma omp for private(i,k)
          for(i=0; i<loop; i++)
	    {
              for(k=0; k<loop; k++)
		{
                  ib[i][j][k] = (i+1)*(k+1)+(j+1)*ie[i];
                }
            }
        }
}
      ier = 0;
      for(j=0; j<loop; j++)
	{
          for(i=0; i<loop; i++)
	    {
              if(ia[i][j] != (i+1)*(j+1)-ie[j]) ier=ier+1;
            }
          for(i=0; i<loop; i++)
	    {
              for(k=0; k<loop; k++)
		{
                  if(ib[i][j][k] != (i+1)*(k+1)+(j+1)*ie[i]) ier=ier+1 ;
                }
            }
        }
      printf( "-----  --");
      printf( " parallel for ordered ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  DO loop calculationot incorrect!\n");
         printf( "     error count=%d\n", ier);
      }
   exit (0) ;
}

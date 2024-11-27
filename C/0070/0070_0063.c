#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

#define mod(i,j) (i%j)
int main()
{
      int ia[150][150], ib[150][150];
      int ie[150], ier;
      int  loop=150;
      int  i, j;

      for(j=0; j<loop; j++)
        {
          for(i=0; i<loop; i++)
	    {
              ia[j][i] = 0;
              ib[j][i] = 0;
	    }
	}
      for(i=0; i<loop; i++)
	{
	  ie[i] = fmod(13*(i+1)/11+17*(i+1)*(pow((-1),((i+1)-((i+1)/2)*2))),9);
          if(ie[i]>=0) ie[i]=ie[i]+1;
        }
#pragma omp parallel private(j)
{
      for(j=0; j<loop; j++)
	{
#pragma omp for
          for(i=0; i<loop; i++)
	    {
              ia[i][j] = (i+1)*(j+1)-ie[j];
            }
#pragma omp for
          for(i=0; i<loop; i++)
	    {
              ib[i][j] = (i+1)+(j+1)*ie[i];
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
              if(ib[i][j] != (i+1)+(j+1)*ie[i]) ier=ier+1;
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

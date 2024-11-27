#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[150][150], ib[150][150];
      int ic[150], id[150], ie[150], ier;
      int  loop=150;
      int  i, j, k;


      for(j=0; j<loop; j++)
	{
          for(i=0; i<loop; i++)
	    {
              ia[j][i] = 0;
              ib[j][i] = 0;
	    }
          ic[j] = 0;
	}
      for(i=0; i<loop; i++)
	{
	  ie[i] = fmod(13*(i+1)/11+ 17*(i+1)*(pow((-1),((i+1)-((i+1)/2)*2))),9);
          if(ie[i] >= 0)
	    {
	      ie[i]=ie[i]+1 ;
	    }
        }

#pragma omp parallel
{
#pragma omp for ordered private(i,j,k)
      for(j=0; j<loop; j++)
	{
          for(i=0; i<loop; i++)
	    {
              ia[i][j] = (i+1)*(j+1)-ie[j];
            }
          for( i=j; i<loop ; i++)
	    {
              ib[i][j] = (i+1)+(j+1)*ie[i];
            }
#pragma omp ordered
   {
          for(i=0; i<j; i++)
	    {
              for(k=j;k<loop ;k++)
		{
                  ic[k] = ic[k]+(i+1)+(j+1)*(k+1)+ie[j];
                }
            }
   }
      }
}
      for(j=0; j<loop; j++)
	{
          id[j] = 0;
	}
      ier = 0;
      for(j=0; j<loop; j++)
	{
          for(i=0; i<loop; i++)
	    {
              if(ia[i][j] != (i+1)*(j+1)-ie[j] ) ier=ier+1 ;
            }
          for(i=j; i<loop; i++)
	    {
              if(ib[i][j] != (i+1)+(j+1)*ie[i] ) ier=ier+1;
            }
          for(i=0; i<j; i++)
	    {
              for(k=j; k<loop; k++)
		{
                  id[k] = id[k]+(i+1)+(j+1)*(k+1)+ie[j];
              }
          }
      }
      for(j=0; j<loop; j++)
	{
          if(ic[j] != id[j] ) ier=ier+1 ;
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

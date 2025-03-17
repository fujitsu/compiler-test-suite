#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int i1, i2[50], i3[50];
      int  i;

      i1 = 25;
      for(i=0; i<50; i++)
	{
          i2[i] = 0;
          i3[i] = 0;
	}

#pragma omp parallel
   {
#pragma omp for lastprivate(i1)
      for (i=0; i<50; i++)
	{
	  i2[i] = i;

          i1=i2[i] ;
        }
   }
      for(i=0; i<50; i++)
	{
	  i3[i] = i;
        }
      for(i=0; i<50; i++)
	{
          if(i2[i] != i3[i])
	    {
              printf( "i2[%d]=%d i3[%d]=%d\n",i,i2[i],i,i3[i]);
            }
        }
      printf(" #### C_OMP lastprivate(int[])  ####\n");
      if(i1 == i2[50-1])
	{
          printf("   OK\n");
	}
      else
	{
          printf("   NG!!\n");
          printf("i1=%d\n",i1);
	  for(i=0;i<50;i++)
	    {
              if(i==0)printf( "i2[%d]=%d",i,i2[i]);
	    }
	  printf("\n");
	  for(i=0;i<50;i++)
  	    {
              if(i==0)printf( "i3=%d",i3[i]);
	    }
	  printf("\n");
      }
   exit (0) ;
}

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

static char c1[5];
int main()
{
      char c2[10][5], c3[10][5];
      int  i;

      strcpy(c1, "OMP0\n");
      for(i=0; i<10; i++)
	{
          memset(c2[i], 0x0,5);
          memset(c3[i], 0x0,5);
	}

#pragma omp parallel
   {
#pragma omp for lastprivate(c1)
      for (i=0; i<10; i++)
	{
	  c2[i][0] = 0 +'0';
	  c2[i][1] = (i+1) +'0';

          c1[0]=c2[i][0];
          c1[1]=c2[i][1];
          c1[2]=c2[i][2];
          c1[3]=c2[i][3];
        }
   }
      for(i=0; i<10; i++)
	{
	  c3[i][0] = 0 +'0';
	  c3[i][1] = (i+1) +'0';
        }
      for(i=0; i<10; i++)
	{
          if(strcmp(c2[i], c3[i]) != 0)
	    {
              printf("strlen(%s)= %d\n",c3[i],strlen(c3[i]));
              printf( "i=%d c2[%d]=%s c3[%d]=%s\n",i,i,c2[i],i,c3[i]);
            }
        }
      printf(" #### C_OMP lastprivate(char[])  ####\n");
      if((strcmp(c1,c2[10-1]) == 0))
	{
          printf("   OK\n");
	}
      else
	{
          printf("   NG!!\n");
          printf("c1=%s\n",c1);
	  for(i=0;i<10;i++)
	    {
              if(i==9)printf( "c2[%d]=%s",i,c2[i]);
	    }
	  printf("\n");
	  for(i=0;i<10;i++)
  	    {
              if(i==9)printf( "c3=%s",c3[i]);
	    }
	  printf("\n");
        }
   exit (0) ;
}

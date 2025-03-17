#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      char c1, c2[50], c3[50];
      int  i;

      strcpy(&c1, "M");
      strcpy(c2, "                           ");
      strcpy(c3, "                           ");

#pragma omp parallel
   {
#pragma omp for lastprivate(c1)
      for (i=0; i<50; i++)
	{
	  if((i+1) < 10)
	    {
	      c2[i] = (i+1) +'0';
	    }
	  else
	    {
	      c2[i] = ((i+1) % 10) +'0';
	    }
          c1=c2[i];
        }
   }
      for(i=0; i<50; i++)
	{
	  if((i+1) < 10)
	    {
	      c3[i] = (i+1) +'0';
	    }
	  else
	    {
	      c3[i] = ((i+1) % 10) +'0';
	    }
        }
      if(strncmp(c2,c3,50) == 0)
        {
          printf(" #### C_OMP lastprivate(char)  ####\n");
          if((strncmp(&c1,&c2[50-1],1) == 0))
	    {
              printf("   OK\n");
	    }
          else
	    {
              printf("   NG!!\n");
              printf(" c1=%c\n",c1);
              printf(" c2=%c\n",c2[50-1]);
            }
        }
      else
	{
          printf("   NG!!\n");
          printf("c1=%c\n",c1);
          printf( " c2=%s\n c3=%s\n",c2,c3);
      }
   exit (0) ;
}

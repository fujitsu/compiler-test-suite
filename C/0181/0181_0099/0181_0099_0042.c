#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif



int lto_sub_42()
{
      int  ier;
      int  loop=50;
      char sa[5], sb[50][5], sc[50][5];
      int  i;

      strcpy(sa, "omp_");
      for(i=0; i<loop; i++)
	{
          strncpy(sb[i], "    ",4);
          strncpy(sc[i], "    ",4);
	}

#pragma omp parallel
   {
#pragma omp for lastprivate(sa)
      for (i=0; i<loop; i++)
	{
	  if((i+1) < 10)
	    {
	      sb[i][0] = 0 +'0';
	      sb[i][1] = (i+1) +'0';
	    }
	  else
	    {
	      sb[i][0] = ((i+1) / 10) +'0';
	      sb[i][1] = ((i+1) % 10) +'0';
	    }
          sa[0]=sb[i][0];
          sa[1]=sb[i][1];
          sa[2]=sb[i][2];
          sa[3]=sb[i][3];
        }
   }
      for(i=0; i<loop; i++)
	{
	  if((i+1) < 10)
	    {
	      sc[i][0] = 0 +'0';
	      sc[i][1] = (i+1) +'0';
	    }
	  else
	    {
	      sc[i][0] = ((i+1) / 10) +'0';
	      sc[i][1] = ((i+1) % 10) +'0';
	    }
        }
      ier = 0;
      for(i=0; i<loop; i++)
	{
          if(strncmp(sb[i], sc[i],4) != 0)
	    {
              printf("strlen(%s)= %d\n",sc[i],strlen(sc[i]));
              printf( "i=%d sb[%d]=%s sc[%d]=%s\n",i,i,sb[i],i,sc[i]);
              ier=ier+1;
            }
        }

      printf( " parallel");
      printf( " do firstprivate(sa) -----\n");
      if((strncmp(sa,sb[loop-1],4) == 0) && ier==0) {
         printf( "OK\n");
      }else{
         printf("NG!  FIRSTPRIVATE clause is not active!\n");
         printf("ier=%d\n",ier);
         printf("sa=%s\n",sa);
	 for(i=0;i<loop;i++)
	   {
             if(i==0)printf( "sb[%d]=%s",i,sb[i]);
	   }
	 printf("\n");
	 for(i=0;i<loop;i++)
	   {
             if(i==0)printf( "sc=%s",sc[i]);
	   }
	 printf("\n");
      }
   return (0) ;
}

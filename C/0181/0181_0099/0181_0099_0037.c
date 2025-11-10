#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif




int lto_sub_37()
{
      int ier;
      int  loop=50;
      char sa[8], sb[50][8], sc[50][8];
      static int  i;

      strcpy(sa,"omp_");
      for(i=0;i<50;i++)
	{
          strcpy(sb[i],"        ");
          strcpy(sc[i],"        ");
	}

#pragma omp parallel
{
#pragma omp for firstprivate(sa)
      for (i=0; i<loop; i++)
      {
	  sb[i][0] = sa[0];
	  sb[i][1] = sa[1];
	  sb[i][2] = sa[2];
	  sb[i][3] = sa[3];
	  if(i<10)
	    {
	      sb[i][4] = 0 +'0';
	      sb[i][5] = (i+1) +'0';
	    }
	  else
	    {
	      sb[i][4] = ((i+1) / 10) +'0';
	      sb[i][5] = ((i+1) % 10) +'0';
	    }
      }
}
      for (i=0; i<loop; i++)
      {
	  sc[i][0] = sa[0];
	  sc[i][1] = sa[1];
	  sc[i][2] = sa[2];
	  sc[i][3] = sa[3];
	  if(i<10)
	    {
	      sc[i][4] = 0 +'0';
	      sc[i][5] = (i+1) +'0';
	    }
	  else
	    {
	      sc[i][4] = ((i+1) / 10) +'0';
	      sc[i][5] = ((i+1) % 10) +'0';
	    }
      }
      ier = 0;
      for(i=0; i<loop; i++)
      {
          if(strncmp(sb[i],sc[i],8) != 0)
	  {
              printf( "i=%d sb[%d]=%s sc[%d]=%s",i,i,sb[i],i,sc[i]);
              ier=ier+1;
          }
      }

      printf( " parallel");
      printf( " do firstprivate(sa) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
	 for(i=0;i<50;i++)
	    {
	      if(1==0)printf( "     sb=");
	      printf( "|%s",sb[i]);
	    }
         printf( "\n");
	 for(i=0;i<50;i++)
	    {
	      if(1==0)printf( "     sc=");
	      printf( "|%s",sc[i]);
	    }
         printf( "\n");
      }
   return (0) ;
}

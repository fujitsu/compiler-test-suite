#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ier;
      int  loop=50;
      char sa[50][9], sb[50][9];
      int  i;
      for(i=0; i<loop; i++)
      {
          
	  sa[i][0] = 0 +'0';
	  if(i <10)
	    {
	      sa[i][1] = 0 +'0';
	      sa[i][2] = (i+1) +'0';
	    }
	  else
	    {
	      sa[i][1] = ((i+1) / 10) +'0';
	      sa[i][2] = ((i+1) % 10) +'0';
	    }
      }
      for(i=0; i<loop; i++)
      {
        strcpy(sb[i],"        ");
      }
#pragma omp parallel
{
#pragma omp for firstprivate(sa)
      for (i=0; i<loop; i++)
      {
          sb[i][0] = sa[i][0];
          sb[i][1] = sa[i][1];
          sb[i][2] = sa[i][2];
          sb[i][3] = sa[i][3];
          sb[i][4] = sa[i][4];
          sb[i][5] = sa[i][5];
          sb[i][6] = sa[i][6];
          sb[i][7] = sa[i][7];
          sb[i][8] = sa[i][8];
          
	  sa[i][0] = 0 +'0';
	  if(i*2 <10)
	    {
	      sa[i][1] = 0 +'0';
	      sa[i][2] = (i*2+1) +'0';
	    }
	  else
	    {
	      sa[i][1] = ((i*2+1) / 10) +'0';
	      sa[i][2] = ((i*2+1) % 10) +'0';
	    }
      }
}
      ier = 0;
      for (i=0; i<loop; i++)
      {
          if (strncmp(sb[i],sa[i],8) != 0) {
              printf( "i=%d sb[%d]=%s sa[%d]=%s\n",i,i,sb[i],i,sa[i]);
              ier=ier+1;
          }
      }
      printf( "-----  --");
      printf( " parallel");
      printf( " do firstprivate(sa) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
	 for(i=0;i<50;i++)
	   {
             if(i==0) printf( "     sa=");
             printf( "|%s",sa[i]);
	   }
         printf( "\n");
	 for(i=0;i<50;i++)
	   {
             if(i==0) printf( "     sb=");
             printf( "|%s",sb[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}

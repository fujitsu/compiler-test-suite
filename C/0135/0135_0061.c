#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
{
  float     to[10][10][10],aa[10],bb[10],ts1[10][10],ts2[10][10];
  float     dy=2;
  int       m=10,n=10,jm;
  int       i,j,k;

  for(i=0;i<10;i++)
    {
      for(j=0;j<10;j++)
	{
	  for(k=0;k<10;k++)
	    {
	      to[i][j][k]=1.;
	    }
	  ts1[i][j]=ts2[i][j]=5.;
	}
      aa[i]=bb[i]=5.;
    }
  
  for(j=1;j<m;j++)
    {
      jm=j-1;
      for(i=1;i<n;i++)
	{
	  to[i][j][1]=aa[i]*to[i][jm][2]/dy+bb[i]*to[i][j][2]/dy;
	}
      ts1[j][1]=aa[1]*ts1[jm][2]/dy+bb[1]*ts1[j][2]/dy;
      ts2[j][1]=aa[9]*ts2[jm][2]/dy+bb[9]*ts2[j][2]/dy;
    }

  printf("##  ##\n");
  for(i=1;i<10;i++)
    {
      printf("%f %f %f %f %f %f %f %f %f %f\n",
	     ts1[i][0],ts1[i][1],ts1[i][2],ts1[i][3],ts1[i][4],
	     ts1[i][5],ts1[i][6],ts1[i][7],ts1[i][8],ts1[i][9]);
      printf("%f %f %f %f %f %f %f %f %f %f\n",
	     ts2[i][0],ts2[i][1],ts2[i][2],ts2[i][3],ts2[i][4],
	     ts2[i][5],ts2[i][6],ts2[i][7],ts2[i][8],ts2[i][9]);
    }
  exit(0);
}






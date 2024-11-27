#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int estiff(int *ie);
int sol2();
int solver(int asst[][101], int nsdf);
int init();

int   nelen, dis[100];
int   joe[250][4],dp[6],force[101],sol[100];
int main()
  {
    int    asst[100][101];
    int    i,j;

    init();
    for( i=0; i<100; i++) {
      for(j=0; j<101; j++) asst[i][j]=0;
    }
    solver(asst,100);
    for( i=0; i<100; i++) printf("%d ",sol[i]);
    printf("\n");
    sol2();    
    for( i=0; i<6; i++) printf("%d ",dp[i]);
    printf("\n");
    exit(0);
  }  

int init()
  {
    int    i,j;

    nelen=250;
    for( i=0; i<100; i++) dis[i] = sol[i] = force[i] = i;
    force[100]=100;
    for(i=0;i<250;i++) {
      for(j=0;j<4;j++) joe[i][j]=1;
    }
    for(i=0;i<6;i++) dp[i] = i;
    return 0;
  }

int solver(asst,nsdf)
int    asst[][101];
int    nsdf;
  {
    int    i,j;

    for(i=0;i<nsdf;i++) {
      sol[i]=1.0;
      for(j=0;j<nsdf;j++) sol[i]+=(asst[i][j]*force[j]);
    }
    return 0;
  }

int sol2()
  {
    int    i,j,m;

    for(i=0;i<nelen;i++) {
      estiff(&i);
      for(j=1;j<3;j++)
	{
	  m=joe[i][j];
	  dp[2*j-1]=dp[2*m-1];
	  dp[2*j]=dis[2*m];
	}
    }
  }

int estiff(ie)
int  *ie;
  {
  *ie=*ie;
  }

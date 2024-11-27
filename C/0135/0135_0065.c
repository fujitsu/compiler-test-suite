#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int tinlin (int km1, int jm1, int im1, double t[][10][10], int tp, int tb, int kk, int jj, int ii);
int input (void);

double  ielmt[50][2];
int main (void)
  {
      int     i,ii=10,j,jj=10,k,kk=10;
      int     km1=10,jm1=10,im1=10,tp=20,tb=5;
      double  t[10][10][10];

      for(i=0;i<ii;i++) {
	for(j=0;j<jj;j++) {
	  for(k=0;k<kk;k++) t[k][j][i]=1.0;
	}
      }
      input();
      for(i=0;i<50;i++) {
	for(j=0;j<2;j++) printf("%f ",ielmt[i][j]);
	printf("\n");
      }
      tinlin(km1,jm1,im1,t,tp,tb,kk,jj,ii);
      exit(0);
  }

int input (void)
  {
      int      i,j,nelmt=50;
      for(i=0;i<nelmt;i++) {
	for(j=0;j<2;j++) ielmt[i][j]=i+j-1;
      }
  }

int tinlin (int km1, int jm1, int im1, double t[][10][10], int tp, int tb, int kk, int jj, int ii)
  {

      int      i,j,k;
      double   tdiff;

      tdiff=(tp-tb)/(km1-1);
      for(i=0;i<im1;i++) {
	for(j=0;j<jm1;j++) {
	  for(k=1;k<km1;k++) t[k][j][i]=t[k-1][j][i]+tdiff;
	}
      }		  
      for(i=0;i<10;i++) {
	for(j=0;j<10;j++) {
	  for(k=1;k<10;k++) printf("%g ",t[i][j][k]);
	  printf("\n");
	}
      }		  
      return 0;
  }






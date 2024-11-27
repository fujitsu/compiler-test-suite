#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int streek();

float a[10][10][10],b[10][10][10],c[10][10][10];
int   ii[10][10][10],jj[10][10][10],ll[10][10][10];
int   na,nb,nc;

int main()
  {
    int  i,j,k;
    nc=10,nb=10,na=10;

    for(i=0;i<na;i++) {
      for(j=0;j<nb;j++) {
	for(k=0;k<nc;k++) {
	  a[i][j][k]=1.;
	  b[i][j][k]=1.;
	  c[i][j][k]=1.;
	}
      }		
    }		
    streek();
    exit(0);
  }  

int streek()
  {
    int  i,j,l;
    int  i1,ip1,j1,jp1,l1,lp1;

    for(i=0;i<na;i++) {
      for(j=0;j<nb;j++) {
	for(l=0;l<nc;l++) {
	  ii[i][j][l]=0;
	  jj[i][j][l]=0;
	  ll[i][j][l]=0;
	}
      }		
    }		

    for(i=1;i<na;i++) {
      i1=i-1;
      ip1=i+1;
      for(j=0;j<nb;j++) {
	j1=j-1;
	jp1=j+1;
	for(l=0;l<nc;l++) {
	  l1=l-1;
	  lp1=l+1;
	  ii[l][j][i]=(int)a[l][j][i];
	  jj[l][j][i]=(int)b[l][j][i];
	  ll[l][j][i]=(int)c[l][j][i];
	}
      }		
    }		

    printf("##    ##\n");
    for(i=0;i<na;i++) {
      for(j=0;j<nb;j++) {
	for(l=0;l<nc;l++) {
	  printf("%d ",ii[i][j][l]);
	}
	printf("\n");
      }		
    }		
    for(i=0;i<na;i++) {
      for(j=0;j<nb;j++) {
	for(l=0;l<nc;l++) {
	  printf("%d ",jj[i][j][l]);
	}
	printf("\n");
      }		
    }		
    for(i=0;i<na;i++) {
      for(j=0;j<nb;j++) {
	for(l=0;l<nc;l++) {
	  printf("%d ",ll[i][j][l]);
	}
	printf("\n");
      }		
    }		
  }

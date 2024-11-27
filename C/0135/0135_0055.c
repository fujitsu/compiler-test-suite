#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int matmul(float a[][10], float b[][10], float c[][10], int m, int n, int mn);
int match(float a[][10], float b[][10], float c[][10], float d[][10], int mx1);

int main (void)
  {
    float   a[10][10],b[10][10],c[10][10],d[10][10];
    int     i=10;

    printf("##  ##\n");
    match(a,b,c,d,i);
    matmul(a,b,c,10,10,10);
    exit(0);
  }  

int match(float a[][10], float b[][10], float c[][10], float d[][10], int mx1)
  {
    int  i,j;
    
    for(i=0;i<mx1;i++) {
      for(j=0;j<mx1;j++) {
	a[i][j]=0.;
	b[i][j]=0.;
	c[i][j]=0.;
	d[i][j]=0.;
      }
    }		
  }		

int  matmul(float a[][10], float b[][10], float c[][10], int m, int n, int mn)
  {
    int  i,j,k;

    for(i=0;i<m;i++) {
      for(j=0;j<n;j++) {
	c[i][j]=0.;
	for(k=0;k<mn;k++) {
	  c[i][j]+=(a[i][k]*b[k][j]);
	}
      }
    }
    for(i=0;i<10;i++) {
      for(j=0;j<10;j++) printf("%f ",c[i][j]);
      printf("\n");
    }
  }

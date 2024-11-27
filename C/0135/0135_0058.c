#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int writev();

float     na,nb,nc;
float     jj[10][10];

int main()
  {
    int i,j;
    
    printf("##  ##\n");
    for(i=0;i<10;i++) {
      for(j=0;j<10;j++) jj[j][i]=.0;
    }
    na=10;
    nb=na;
    nc=na-nb+10;
    writev();
    exit(0);
  }

int writev()
  {
    int ii,i,j;
    
    for(i=0;i<na;i++)
      {
        ii=nb+1-i;
	printf("%d ",ii);
        for(j=0;j<nc;j++) printf("%f ",jj[i][j]);
	printf("\n");
      }
  }

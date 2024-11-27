#include <stdlib.h>


#include <stdio.h>
#include <math.h>

int main()
  {
    float   pkg[16][16][12],elg[16][16][12];
    float   t[28],c[16];
    int     i,j,k,a1;

    for(i=0;i<16;i++) {
      a1=i-11;
      t[i]=pow(2,a1);
      for(j=0;j<16;j++) {
	a1=j-8;
	c[j]=pow(2,a1);
	for(k=0;k<12;k++) {
	  pkg[j][i][k]=log(pow(c[j],2)*pow(t[i],2))*1.44269504;
	  elg[j][i][k]=pkg[j][i][k];
	}
      }
    }
    printf("##  ##\n");
    for(i=0;i<16;i++) {
      for(j=0;j<16;j++) {
	for(k=0;k<12;k++) {
	  printf("%f ",elg[i][j][k]);
	}
	printf("\n");
      }
    }
    exit(0);
  }  

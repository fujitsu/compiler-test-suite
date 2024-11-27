#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int init();

float     rm[3][3];

int main()
  {
    float     na,nb,nc;
    float     a[10][10][10];
    int       ii,jj,kk,i,j,k,l;

    jj=ii=10;
    kk=ii-jj+10;
    init();

    for(i=0;i<ii;i++) {
      for(j=0;j<jj;j++) {
	for(k=0;k<kk;k++) {
	  a[k][j][i]=0;
	  for(l=0;l<3;l++) rm[l][l]=2.0;
        }	    
      }
    }
    printf("##  ##\n");
    for(i=0;i<3;i++) {
      for(j=0;j<3;j++) printf("%f ",rm[i][j]);
      printf("\n");
    }	    
    exit(0);
  }

int init()
  {
    int i,j;
    for(i=0;i<3;i++) {
      for(j=0;j<3;j++) rm[i][j]=0;
    }
  }

#include <stdlib.h>


#include <stdio.h>

int main()
{
  float        a[10],b[10][20],c[10][30],d[10][30][50];
  int          i,j,k,l,n=1;
  
  for(i=0;i<10;i++) {
    for(j=0;j<20;j++) b[i][j]=1.;
    for(j=0;j<30;j++) {
      c[i][j]=1.;
      for(k=0;k<50;k++) d[i][j][k]=1.;
    }
  }
  
  for(i=0;i<10;i++) {
    a[i]=i;
    a[i]+=1;
    for(j=0;j<20;j++) b[i][j]+=n;
    for(k=0;k<30;k++) {
      c[i][k]+=b[i][4];
      for(l=0;l<50;l++) {
	d[i][k][l]=l;
      }
    }
    n++;
  }
  printf("## A ## \n");
  for(i=0;i<10;i++) printf(" %f ",a[i]);
  printf("\n## B ## \n");
  for(i=0;i<10;i++) {
    for(j=0;j<20;j++) printf(" %f ",b[i][j]);
    printf("\n");
  }
  printf("## C ## \n");
  for(i=0;i<10;i++) {
    for(j=0;j<30;j++) printf(" %f ",c[i][j]);
    printf("\n");
  }
  printf("\n## D ## \n");
  for(i=0;i<10;i++) {
    for(j=0;j<30;j++) {
      for(k=0;k<50;k++) printf(" %f ",d[i][j][k]);
      printf("\n");
    }
  }
  exit(0);
}

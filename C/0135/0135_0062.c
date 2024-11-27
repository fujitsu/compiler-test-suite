#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int init();

float     t[50][50],b[2][3],cm[3][3],ll[3];
float     rm[3][3];
float     pp,a3d;
int       h;
  
int main()
{
  int       i,j,m;

  init();
  for(i=0;i<3;i++) {
    for(j=0;j<3;j++) cm[i][j]=a3d*b[0][i]*b[0][j]+b[1][i]*b[1][j]+pp*rm[i][j];
  }  
  for(i=0;i<3;i++) {
    for(j=0;j<3;j++) {
      m=ll[i];
      h=ll[j];
      t[m][h]+=(cm[i][j]);
    }  
  }  
  printf("##  ##\n");
  for(i=0;i<50;i++) {
    for(j=0;j<50;j++) {
      printf("%f ",t[i][j]);
    }  
    printf("\n");
  }  
  for(i=0;i<3;i++) {
    for(j=0;j<3;j++) {
      printf("%f ",cm[i][j]);
    }  
    printf("\n");
  }  
  exit(0);
}

int init()
{
  int       i,j,k;

  for(i=0;i<50;i++) {
    for(j=0;j<50;j++) t[j][i]=1.;
  }  

  for(i=0;i<3;i++) {
    for(j=0;j<3;j++)
      {
	cm[j][i]=2.;
	rm[j][i]=3.;
      }
    for(k=0;k<2;k++) b[k][i]=4.;
    ll[i]=5;
  }
  h=1;
  pp=2;
  a3d=3;
}  

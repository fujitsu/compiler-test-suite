#include <stdlib.h>


#include <stdio.h>
#include <math.h>


typedef struct 
{
  int  a[10][10];
  int  b;
  int  c;
  int  e;
} TXT;


int main()
  {
    int    i,j=0,k=50;
    TXT    c1;

    c1.b=10,c1.c=2,c1.e=1;
    for(i=0;i<10;i++) {
      for(j=0;j<10;j++) {
	c1.a[i][j]=1;
      }
    }
    for(i=0;i<c1.b;i++) if(c1.a[i][c1.c] < c1.a[c1.e][c1.c]) c1.e=i;

    for(i=0;i<10;i++) {
      for(j=0;j<10;j++) {
	printf("%d ",c1.a[i][j]);
      }
      printf("\n");
    }
    exit(0);
  }

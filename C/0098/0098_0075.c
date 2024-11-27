#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float a[10][10];
  float b[10][10];
  float c[10][10];
} tag1;  
int main()
{
	long int i,j,k;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			tag1.a[i][j]=1.0;
			tag1.b[i][j]=2.0;
			tag1.c[i][j]=3.0;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			tag1.a[i][j]+=tag1.b[i][j]+tag1.c[i][j];
		}
	}
	k=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf("   A[%d][%d] ==>",i,j);
			printf(" %16.7f ",tag1.a[i][j]);
			k++;
			if((k%2)==0) printf("\n");
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][10],b[10][10],c[10][10];
	long int i,j,k;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[i][j]=1.0;
			b[i][j]=2.0;
			c[i][j]=3.0;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[i][j]+=b[i][j]+c[i][j];
		}
	}
	k=0;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf("   A[%d][%d] ==>",i,j);
			printf(" %16.7f ",a[i][j]);
			k++;
			if((k%2)==0) printf("\n");
		}
	}
	exit (0);
}

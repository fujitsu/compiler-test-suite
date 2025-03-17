#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][20],b[10][10];
	long int i,j,k;
	for(j=0;j<20;j++){
		for(i=0;i<10;i++){
			a[i][j]=1.0;
		}
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			b[i][j]=2.0;
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a[i][j]=a[i][j+1]+b[i][j];
		}
	}
	k=0;
	for(j=0;j<20;j++){
		for(i=0;i<10;i++){
			printf("  A[%02d][%02d] ==>%10.1f",i,j,a[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}

	printf("\n");
	exit (0);
}

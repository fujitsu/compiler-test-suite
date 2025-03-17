#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][5],b[5]={
				0.0,0.0,0.0,0.0,0.0		},
	s;
	long int i,j,k;
	for(i=0,j=0;i<10;i++){
		a[i][j]=3.0;
	}
	for(i=0,j=1;i<10;i++){
		a[i][j]=4.0;
	}
	for(i=0,j=2;i<10;i++){
		a[i][j]=5.0;
	}
	for(i=0,j=3;i<10;i++){
		a[i][j]=6.0;
	}
	for(i=0,j=4;i<10;i++){
		a[i][j]=7.0;
	}
	for(i=0;i<5;i++){
		s=i+1;
		for(j=0;j<9;j++){
			a[j+1][i]=a[j][i]+s;
		}
	}
	k=0;
	for(j=0;j<5;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%9.1f  ",i,j,a[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	for(i=0;i<5;i++){
		s=i+1;
		for(j=0;j<9;j++){
			a[j+1][i]=a[j][i]-(j+1);
		}
		b[i]=s*s;
	}
	k=0;
	for(j=0;j<5;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%9.1f  ",i,j,a[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	k=0;
	for(i=0;i<5;i++){
		printf("  B[%d]==>%9.1f  ",i,b[i]);
		k++;
		if((k%3)==0) printf("\n");
	}
	printf("\n");
	exit (0);
}

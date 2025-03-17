#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main()
{
	float a[10][6],b[6]={
				0.0,0.0,0.0,0.0,0.0		};
	long int i,j,k;
	float s;
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
	for(i=0,j=4;i<5;i++){
		a[i][j]=6.0;
	}
	for(i=5,j=4;i<10;i++){
		a[i][j]=7.0;
	}
	for(i=0,j=5;i<10;i++){
		a[i][j]=7.0;
	}
	for(i=0;i<6;i++){
		s=i+1;
		for(j=0;j<9;j++){
			a[j+1][i]=a[j][i]+s;
			s=a[j+1][i];
		}
		b[i]=s;
	}
	k=0;
	for(j=0;j<6;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%f  ",i,j,a[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	k=0;
	for(i=0;i<6;i++){
		printf("  B[%d]==>%f  ",i,b[i]);
		k++;
		if((k%3)==0) printf("\n");
	}
	printf("\n");
	for(i=0;i<6;i++){
		s=i+1;
		if(i>2) b[i]=s;
		for(j=0;j<9;j++){
			a[j+1][i]=a[j][i]-j;
		}
		s=b[i]/2.0;
		b[i]=s*s;
	}
	k=0;
	for(j=0;j<6;j++){
		for(i=0;i<10;i++){
			printf("  A[%d][%d]==>%f  ",i,j,a[i][j]);
			k++;
			if((k%3)==0) printf("\n");
		}
	}
	printf("\n");
	k=0;
	for(i=0;i<6;i++){
		printf("  B[%d]==>%f  ",i,b[i]);
		k++;
		if((k%3)==0) printf("\n");
	}
	printf("\n");
	exit (0);
}

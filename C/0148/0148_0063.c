#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][6][6],b[10][6],c[10]={
				1,2,3,4,5,6,7,8,9,0		};
	long int n=10;
	long int i,j,k;
	float s;
	for(i=0;i<10;i++){
		s=(i+1)+c[i];
		for(j=0;j<6;j++){
			b[i][j]=s*s;
			for(k=0;k<6;k++){
				a[i][j][k]=s/8.0;
			}
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<10;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
	for(j=0;j<6;j++){
		for(i=0;i<10;i++){
			printf("   B[%d][%d] ==>",i,j);
			printf(" %16.7f \n",b[i][j]);
		}
	}
	for(i=0;i<10;i++){
		s=(i+1)+c[i];
		for(j=0;j<6;j++){
			b[i][j]=s*s-2;
			for(k=0;k<6;k++){
				a[i][j][k]=s/8.0-3;
			}
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<10;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
	for(j=0;j<6;j++){
		for(i=0;i<10;i++){
			printf("   B[%d][%d] ==>",i,j);
			printf(" %16.7f \n",b[i][j]);
		}
	}
	exit (0);
}

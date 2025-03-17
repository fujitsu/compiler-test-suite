#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][10][50],b[10][10][50],c[10][10][50];
	long int i,j,k;
	for(k=0;k<50;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				a[i][j][k]=1.0;
				b[i][j][k]=2.0;
				c[i][j][k]=3.0;
			}
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<50;k+=2){
				a[i][j][k]+=c[i][j][k];
				b[i][j][k]*=a[i][j][k];
			}
		}
	}
	for(k=0;k<50;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   A[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
	for(k=0;k<50;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   B[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",b[i][j][k]);
			}
		}
	}
	exit (0);
}

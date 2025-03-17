#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][10][10],b[10][10][10],c[10][10][10];
	long int i,j,k,l;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				a[i][j][k]=1.0;
				b[i][j][k]=2.0;
				c[i][j][k]=3.0;
			}
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<9;j++){
			for(k=0;k<10;k++){
				a[i][j+1][k]+=b[i][j+1][k]+c[i][j+1][k];
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][10][10][20],b[10][10][10][10];
	long int i,j,k,l;
	for(l=0;l<20;l++){
		for(k=0;k<10;k++){
			for(j=0;j<10;j++){
				for(i=0;i<10;i++){
					a[i][j][k][l]=1.0;
				}
			}
		}
	}
	for(l=0;l<10;l++){
		for(k=0;k<10;k++){
			for(j=0;j<10;j++){
				for(i=0;i<10;i++){
					b[i][j][k][l]=2.0;
				}
			}
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				for(l=0;l<10;l++){
					a[i][j][k][l]=a[i][j][k][l+1]+b[i][j][k][l];
				}
			}
		}
	}
	for(l=0;l<20;l++){
		for(k=0;k<10;k++){
			for(j=0;j<10;j++){
				for(i=0;i<10;i++){
					printf("   A[%02d][%02d][%02d][%02d] ==>",i,j,k,l);
					printf(" %16.7f \n",a[i][j][k][l]);
				}
			}
		}
	}
	exit (0);
}

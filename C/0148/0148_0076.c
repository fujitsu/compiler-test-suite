#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10][10][10][10],b[10][10][10][10],c[10][10][10][10];
	long int i,j,k,l,m;
	for(l=0;l<10;l++){
		for(k=0;k<10;k++){
			for(j=0;j<10;j++){
				for(i=0;i<10;i++){
					a[i][j][k][l]=1.0;
					b[i][j][k][l]=2.0;
					c[i][j][k][l]=3.0;
				}
			}
		}
	}
	for(m=0;m<10;m++){
		for(i=0;i<10;i++){
			for(j=0;j<10;j++){
				for(k=0;k<10;k++){
					for(l=0;l<10;l++){
						a[i][j][k][l]+=b[i][j][k][l]+c[i][j][k][l];
					}
				}
			}
		}
	}
	for(l=0;l<5;l++){
		for(k=0;k<5;k++){
			for(j=0;j<5;j++){
				for(i=0;i<5;i++){
					printf("   A[%d][%d][%d][%d] ==>",i,j,k,l);
					printf(" %16.7f \n",a[i][j][k][l]);
				}
			}
		}
	}
	exit (0);
}

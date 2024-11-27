#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[10][10][10][10];
} a,b;
int main()
{
	long int i,j,k,l;
	for(l=0;l<10;l++){
		for(k=0;k<10;k++){
			for(j=0;j<10;j++){
				for(i=0;i<10;i++){
					a.x[i][j][k][l]=1.0;
					b.x[i][j][k][l]=2.0;
				}
			}
		}
	}
	for(i=0;l<10;l++){
		for(j=0;k<10;k++){
			for(k=0;j<i;j++){
				for(l=0;i<j;i++){
					a.x[i][j][k][l]+=b.x[i][j][k][l];
				}
			}
		}
	}
	for(l=0;l<10;l++){
		for(k=0;k<10;k++){
			for(j=0;j<10;j++){
				for(i=0;i<10;i++){
					printf("   A[%d][%d][%d][%d] ==>",i,j,k,l);
					printf(" %16.7f \n",a.x[i][j][k][l]);
				}
			}
		}
	}
	exit (0);
}


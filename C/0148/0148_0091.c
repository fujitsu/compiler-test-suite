#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub (float a[10][10][10], float b[10][10][10], float c[10][10][10], long int n1, long int n2, long int n3, long int n0);











int main()
{
	float a[10][10][10],b[10][10][10],c[10][10][10];
	long int i,j,k;
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				a[i][j][k]=1.0;
				b[i][j][k]=2.0;
				c[i][j][k]=3.0;
			}
		}
	}
	sub(a,b,c,10,10,10,2);
	exit (0);
}
int sub (float a[10][10][10], float b[10][10][10], float c[10][10][10], long int n1, long int n2, long int n3, long int n0)
{
	long int i,j,k;
	for(i=n0+1;i<n1;i++){
		for(j=n0+0;j<n2;j++){
			for(k=n0-1;k<n3;k++){
				a[i][j][k]+=c[i][j][k];
				b[i][j][k]*=a[i][j][k];
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   A[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
	for(k=0;k<10;k++){
		for(j=0;j<10;j++){
			for(i=0;i<10;i++){
				printf("   B[%02d][%02d][%02d] ==>",i,j,k);
				printf(" %16.7f \n",b[i][j][k]);
			}
		}
	}
	return 0;
}

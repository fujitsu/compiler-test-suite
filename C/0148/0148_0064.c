#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int sub (float a[1000][6][6], float b[1000][6][6], float c[1000][6][6], long int n, long int m);











int main()
{
	float a[1000][6][6],b[1000][6][6],c[1000][6][6];
	long int n=1000,m=6;
	long int i,j,k,l=0;
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<1000;i++){
				a[i][j][k]=3.5;
				b[i][j][k]=3.5;
				l++;
				if(l<=6000) c[i][j][k]=3.5;
				else c[i][j][k]=-9.125;
			}
		}
	}
	for(i=0;i<1000;i+=2){
		for(j=0;j<6;j++){
			for(k=0;k<6;k++){
				a[i][j][k]=b[i][j][k]+c[i][j][k];
			}
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<1000;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
	sub(a,b,c,n,m);
	exit (0);
}
int sub (float a[1000][6][6], float b[1000][6][6], float c[1000][6][6], long int n, long int m)
{
	long int i,j,k;
	for(i=0;i<n;i+=2){
		for(j=0;j<m;j++){
			for(k=0;k<m;k++){
				a[i][j][k]=b[i][j][k]+c[i][j][k];
			}
		}
	}
	for(k=0;k<6;k++){
		for(j=0;j<6;j++){
			for(i=0;i<1000;i++){
				printf("   A[%d][%d][%d] ==>",i,j,k);
				printf(" %16.7f \n",a[i][j][k]);
			}
		}
	}
}

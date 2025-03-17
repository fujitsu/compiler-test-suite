#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10][10],b[10][10],c[10][10];
	long int i,k,j,l;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a[i][j]=1.0;
			b[i][j]=2.0;
			c[i][j]=3.0;
		}
	}
	for(k=0;k<10;k++){
		for(l=0;l<10;l++){
			a[k][l]=b[k][l]+c[k][l];
			b[k][l]=a[k][l]+c[k][l];
		}
	}
	printf("   **** 2335 *****  \n");
	for(i=2;i<4;i++){
		for(j=4;j<6;j++){
			printf(" a[%ld][%ld] => %f     b[%ld][%ld] => %f\n",
			    i,j,a[i][j],i,j,b[i][j]);
		}
	}
	for(i=2;i<4;i++){
		for(j=4;j<6;j++){
			printf(" c[%ld][%ld] => %f\n",i,j,c[i][j]);
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main(){
	float    a[10][10],b[10][10],c[10][10];
	long int i,j ;
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[i][j]=1.;
			b[i][j]=1.;
			c[i][j]=1.;
		}
	}
	printf("\n");
	for(i=0;i<10;i++){
		a[i][0] = b[i][1] + c[i][2] ;
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			printf(" %f %f %f \n",a[i][j],b[i][j],c[i][j]);
		}
	}
	exit (0);
}

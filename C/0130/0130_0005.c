#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	float     z[10][10];
	float     g=0.0;
	int       i,j,n=10;
	int       k=2;
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			z[i][j]=i+j;
		}
	}
	for(i=0;i<n;i++){
		g=g+z[i][k]*z[k][i];
	}
	printf("g=%f \n",g);
	exit (0);
}

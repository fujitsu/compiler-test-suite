#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float a[10][10],b[10][10],c[10][10];
	long int i,m,n,j;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a[i][j]=1.0;
			b[i][j]=2.0;
			c[i][j]=3.0;
		}
	}
	m=10;
	n=2;
	for(i=0;i<m;i+=n){
		for(j=0;j<n*3+1;j++){
			a[i][j]=b[i][j]*c[i][j]/2.0;
			b[i][j]=a[i][j+1]+c[i][j];
			c[i][j]=a[i][j]-b[i][j];
		}
	}
	for(i=0;i<10;i+=n){
		for(j=m-n-1;j>=0;j-=1){
			a[i][j]=b[i][j]*2.0-c[i][j];
			b[i][j]=a[i][j]+c[i][j];
			c[i][j]=a[i][j]*b[i][j];
		}
	}
	n++;
	for(i=0;i<n*3;i++){
		for(j=1;j<10;j+=m-n*3){
			a[i][j]=b[i][j]-c[i][j];
			c[i][j]=b[i][j]*a[i][j-1];
			b[i][j]=c[i][j]+(a[i][j-1]-1.0);
		}
	}
	printf("  **** 2330 **** \n");
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" a[%ld][%ld] => %10.3f     b[%ld][%ld] => %10.3f\n",
			    i,j,a[i][j],i,j,b[i][j]);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" c[%ld][%ld] => %10.3f\n",i,j,c[i][j]);
		}
	}
	exit (0);
}


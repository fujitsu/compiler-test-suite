#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[10][10];
} a,b,c;
int main(){
	long int i,m,n,j;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a.x[i][j]=1.0;
			b.x[i][j]=2.0;
			c.x[i][j]=3.0;
		}
	}
	m=10;
	n=2;
	for(i=0;i<m;i+=n){
		for(j=0;j<n*3+1;j++){
			a.x[i][j]=b.x[i][j]*c.x[i][j]/2.0;
			b.x[i][j]=a.x[i][j+1]+c.x[i][j];
			c.x[i][j]=a.x[i][j]-b.x[i][j];
		}
	}
	for(i=0;i<10;i+=n){
		for(j=m-n-1;j>=0;j-=1){
			a.x[i][j]=b.x[i][j]*2.0-c.x[i][j];
			b.x[i][j]=a.x[i][j]+c.x[i][j];
			c.x[i][j]=a.x[i][j]*b.x[i][j];
		}
	}
	n++;
	for(i=0;i<n*3;i++){
		for(j=1;j<10;j+=m-n*3){
			a.x[i][j]=b.x[i][j]-c.x[i][j];
			c.x[i][j]=b.x[i][j]*a.x[i][j-1];
			b.x[i][j]=c.x[i][j]+(a.x[i][j-1]-1.0);
		}
	}
	printf("  ****  **** \n");
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" a[%ld][%ld] => %10.3f     b[%ld][%ld] => %10.3f\n",
			    i,j,a.x[i][j],i,j,b.x[i][j]);
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			printf(" c[%ld][%ld] => %10.3f\n",i,j,c.x[i][j]);
		}
	}
	exit (0);
}


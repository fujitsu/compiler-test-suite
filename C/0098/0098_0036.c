#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x[10][10];
} a,b,c;
int main(){
	long int i,k,l,j;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			a.x[i][j]=1.0;
			b.x[i][j]=2.0;
			c.x[i][j]=3.0;
		}
	}
	for(k=0;k<10;k++){
		b.x[k][k]=a.x[k][k]+c.x[k][k];
		for(l=k;l>=0;l--){
			a.x[k][l]=b.x[k][l]+c.x[k][l];
			b.x[k][l]=a.x[k][l]+c.x[k][l];
		}
	}
	printf("   ****  *****  \n");
	for(i=2;i<4;i++){
		for(j=4;j<6;j++){
			printf(" a[%ld][%ld] => %f     b[%ld][%ld] => %f\n",
			    i,j,a.x[i][j],i,j,b.x[i][j]);
		}
	}
	for(i=2;i<4;i++){
		for(j=4;j<6;j++){
			printf(" c[%ld][%ld] => %f\n",i,j,c.x[i][j]);
		}
	}
	exit (0);
}

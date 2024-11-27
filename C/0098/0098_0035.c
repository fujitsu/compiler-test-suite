#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float a[10][10];
        float b[10][10];
        float c[10][10];
} t;
int main(){
	long int i,k,j,l;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			t.a[i][j]=1.0;
			t.b[i][j]=2.0;
			t.c[i][j]=3.0;
		}
	}
	for(k=0;k<10;k++){
		for(l=0;l<10;l++){
			t.a[k][l]=t.b[k][l]+t.c[k][l];
			t.b[k][l]=t.a[k][l]+t.c[k][l];
		}
	}
	printf("   ****  *****  \n");
	for(i=2;i<4;i++){
		for(j=4;j<6;j++){
			printf(" a[%ld][%ld] => %f     b[%ld][%ld] => %f\n",
			    i,j,t.a[i][j],i,j,t.b[i][j]);
		}
	}
	for(i=2;i<4;i++){
		for(j=4;j<6;j++){
			printf(" c[%ld][%ld] => %f\n",i,j,t.c[i][j]);
		}
	}
	exit (0);
}

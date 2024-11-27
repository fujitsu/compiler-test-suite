#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define I   i+((-1+1)*1)+0
int main(){
	long int a[10][10][10];
	int i,j,k;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				a[I][j+(1+2)*0][-(3+4)*0+k]=100*i+10*j+k;
			}
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				printf("a[%d][%d][%d]=%ld \n",i,j,k,a[i][j][k]);
			}
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int a[10][10][10],b[10];
	int i,j,k;
	for(i=0;i<10;i++){
		b[i]=0;
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				a[i][j][k]=0;
				a[i][j][k]=a[i][b[j]][k];
			}
		}
	}
	exit (0);
}

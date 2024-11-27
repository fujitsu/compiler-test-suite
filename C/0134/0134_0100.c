#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10][10][10];
	long int b[10][10];
	int i,j,k;
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			b[i][j]=i*10+j*0;
			for(k=0;k<10;k++){
				a[i][j][k]=1*i+10*j+100*k;
			}
		}
	}
	for(i=1,j=0;i<9;i++){
		a[i][j][1]=b[1*(i-1)][j];
		j++;
	}
	for(i=0;i<10;i++){
		for(j=0;j<10;j++){
			for(k=0;k<10;k++){
				printf("a[i][j][k]=%ld \n",a[i][j][k]);
			}
		}
	}
	exit (0);
}

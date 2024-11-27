#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[10][2];
	int i,j=0;
	for(i=0;i<10;i=j+i+1){
		for(j=0;j<2;j++){
			a[i][j]=i*10+j*0;
		}
		j=0;
	}
	for(i=0;i<10;i++) for(j=0;j<2;j++)
		printf ("a[%ld][%ld]=%ld \n",i,j,a[i][j]);
	exit (0);
}

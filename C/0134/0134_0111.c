#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int a[2][10]={
		{0,0,0,0,0,0,0,0,0,0},
		                   {0,0,0,0,0,0,0,0,0,0}	};
	long int b[2][10]={
		{1,1,1,1,1,1,1,1,1,1},
		                   {2,2,2,2,2,2,2,2,2,2}	};
	int i,j;
	for(i=0;i<10;i++){
		for(j=0;j<2;j++){
			a[j][i]=b[j][i];
		}
	}
	for(i=0;i<10;i++){
		for(j=0;j<2;j++){
			printf("a[j][i]=%ld \n",a[j][i]);
		}
	}
	exit (0);
}

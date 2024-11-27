#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A    a*(b+c*(-d))
int main(){
	long int x[5][10]={
		{0,0,0,0,0,0,0,0,0,0},{1,1,1,1,1,1,1,1,1,1},
		                   {2,2,2,2,2,2,2,2,2,2},{3,3,3,3,3,3,3,3,3,3},
		                   {4,4,4,4,4,4,4,4,4,4}	};
	long int y[5][10] ;
	int i,j,n=0;
	int a=1;
	int b=6;
	int c=2;
	int d=3;
	for(i=0;i<A*(A*(A*(A+5)))+5;i++){
		for(j=0;j<10;j++){
			y[i][j]=x[i][j];
		}
	}
	for(i=0;i<5;i++){
		for(j=0;j<10;j++){
			printf("y[%d][%d]=%ld \n",i,j,y[i][j]);
		}
	}
	exit (0);
}

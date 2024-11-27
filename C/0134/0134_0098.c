#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define A(i,j) a[i*(n+j)][m]
int main(){
	int a[10][2]={
		{1,2},{3,4},{5,6},{7,8},{9,10},
		              {11,12},{13,14},{15,16},{17,18},{19,20}	};
	int b[10]={
		0,0,0,0,0,0,0,0,0,0	};
	int i,j,k,l;
	int m=0,n=1;
	for(i=0,j=0;i<3;i++){
		b[i]=A(i,j);
		j++;
	}
	for(k=0,l=0;k<10;k++){
		printf("b[%d] = %d \n",l,b[l]);
		l++;
	}
	exit (0);
}

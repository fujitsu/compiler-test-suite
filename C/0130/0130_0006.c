#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int pm1[10]={
		1,2,3,4,5,6,7,8,9,10	};
	long int pm2[10]={
		9,8,7,6,5,4,3,2,1,0	};
	long int vmax,vmin;
	int       i,j,n=10;
	vmax=pm1[0];
	vmin=pm2[0];
	for(i=0;i<n;i++){
		vmax=(pm1[i]>vmax)?pm1[i]:vmax;
		vmin=(pm2[i]<vmin)?pm2[i]:vmin;
	}
	printf("max=%ld min=%ld \n",vmax,vmin);
	exit (0);
}

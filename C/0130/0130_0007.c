#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int pm2[10]={
		0,1,2,3,4,5,6,7,8,9	};
	long int vmax;
	int      i,j,n=10;
	int      maxind;
	vmax=pm2[0];
	maxind=1;
	for(i=1;i<n;i++){
		if(vmax<pm2[i]){
			vmax=pm2[i];
			maxind=i;
		}
	}
	printf("max=%ld maxind=%d \n",vmax,maxind);
	exit (0);
}

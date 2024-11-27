#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	int vval[10]={
		0,1,2,3,4,5,6,7,8,9	};
	int lcom[10]={
		9,8,7,6,5,4,3,2,1,0	};
	int vvi[10],eps=5;
	int      i,j,n=10;
	for(i=0;i<n;i++){
		if(vval[i]>eps)
			vvi[i]=vval[i];
		else if(vval[i]<eps)
			vvi[i]=vval[i];
			else
			vvi[i]=0;
	}
	for(j=0;j<10;j++){
		printf("vvi[%d]=%d \n",j,vvi[j]);
	}
	exit (0);
}

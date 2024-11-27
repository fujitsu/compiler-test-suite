#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(){
	long int vval[10]={
		0,1,2,3,4,5,6,7,8,9	};
	long int lcom[10]={
		2,1,0,2,1,0,2,1,0,2	};
	long int vvi;
	int      i,n=10;
	for(i=0;i<n;i++){
		if(lcom[i]==0){
			vvi=vval[i];
			continue;
		}
		if(lcom[i]==1){
			vvi=5;
			continue;
		}
		if(lcom[i]==2){
			vvi=10;
			continue;
		}
	}
	printf("vvi=%ld \n",vvi);
	exit (0);
}

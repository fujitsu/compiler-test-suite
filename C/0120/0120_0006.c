#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i,maxidx;
	float data[]={
		0.1,7.4,8.3,0.5,5.3,7.9,3.5,8.5,4.5,8.2	};
	float maxval;
	maxval=data[0];
	maxidx=0;
	for(i=0;i<10;i++){
		if(maxval<data[i]){
			maxval=data[i];
			maxidx=i;
		}
	}
	printf("%6.3f\n",maxval);
	exit (0);
}

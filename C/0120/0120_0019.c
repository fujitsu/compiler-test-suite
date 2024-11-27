#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int maxidx;
	int maxval;
	int i;
	int data []={
		9,8,1,2,10,1,2,4,5,3	};
	maxval=data[0];
	maxidx=1;
	for(i=2;i<10;i++) {
		if(maxval < data[i]){
			maxval=data[i];
			maxidx=i;
		}
	}
	printf("%3d\n",maxval);
	exit (0);
}

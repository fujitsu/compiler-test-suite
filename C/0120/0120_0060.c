#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int data[]={
		15,8,26,4,-3,7,5,4,8,9	};
	int total,i,count;
	total=0;
	for(i=0,count=1; ; i++)
	{
		if (data[i]<0) break;
		if (data[i]=0) continue;
		total += data[i];
		count +=1;
	}
	printf("average = %d\n",total/count);
	exit (0);
}

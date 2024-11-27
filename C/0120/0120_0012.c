#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int data[]={
		1,4,8,6,4,9,4,2,5,7	};
	int count;
	int i;
	int total;
	total=0;
	for (i=0,count=1;i<10 ;i++)
	{
		if (data[i]==0) continue;
		total +=data[i];
		count += 1;
	}
	printf("average = %d\n",total/count);
	exit (0);
}

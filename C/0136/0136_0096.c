#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(float *p3);





int main()
{
	int i,count=0;
	float r4;
	init(&r4);
	
	for(i=0;i<100+10+10.0;i++)
		count++;
	
	
	for(i=0;i++<100.0;)
		count++;
	
	
	
	
	
	for(i=0;i+10<r4+100;i++)
		count++;
	
	
	
	for(i=0;i++<100;)
		count++;
	
	
	
	for(i=0;i+10<100;i++)
		count++;
	printf("count=%d \n",count);
	exit (0);
}
int init(float *p3)
{
	*p3=50.5;
}

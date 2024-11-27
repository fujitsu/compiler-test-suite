#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(int *p1,int *p2);





int main()
{
	int i,j,k,count=0;
	init(&j,&k);
	
	for(i=1;i<100;i*=2)
		count++;
	
	
	for(i=0;i<100;i+=10)
		count++;
	
	for(i=0;i<100;i=10+i)
		count++;
	
	for(i=0;i<20;i=10+k)
		count++;
	
	for(i=100;i>(-10);i=i-10)
		count++;
	
	for(i=10;i;i=j-i)
		count++;
	
	for(i=100;i>0;i=10-k)
		count++;
	printf("count=%d \n",count);
	exit (0);
}
int init(int *p1,int *p2)
{
	*p1=10;
	*p2=20;
}

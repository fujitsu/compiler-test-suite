#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(int *p1 , short int *p2 , float *p3);





int main()
{
	int i,j,count=0;
	short int i2;
	float r4;
	init(&j,&i2,&r4);
	
	
	for(i=0;i<j+100;i++)
		count++;
	for(i=1000;i>i2;i-=3)
		count++;
	
	for(i=0;i<j+100*10;i+=10)
		count++;
	for(i=0;r4>i;i+=(10.5+0.5))
		count++;
	
	for(i=0;r4>i+1;i++)
		count++;
	
	
	for(i=0;j-1>i;i++)
		count++;
	for(i=1000;i2<i;i-=3)
		count++;
	
	for(i=0;j+100*10>i;i+=10)
		count++;
	for(i=0;i<r4;i+=(10.5+0.5))
		count++;
	
	for(i=0;i+1<r4;i++)
		count++;
	
	
	for(i=0;i<r4+5;i++)
		count++;
	
	for(i=0;i<r4*5;i++)
		count++;
	for(i=100;r4/5<=i;i--)
		count++;
	
	for(i=0;i+10<j+10;i++)
		count++;
	for(i=0;i<r4+5;r4--)
		count++;
	printf("count=%d \n",count);
	exit (0);
}
int init(int *p1 , short int *p2 , float *p3)
{
	*p1=10;
	*p2=3;
	*p3=50.5;
}

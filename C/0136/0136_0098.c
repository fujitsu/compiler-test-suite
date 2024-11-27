#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(int *p1,int *p2,short int *p3,short int *p4);





int main()
{
	short int i2a,i2b,i2c=10;
	int i,j,k,count=0;
	float r4;
	init(&j,&k,&i2a,&i2b);
	
	for(i=1;i<100;i+=2)
		count++;
	
	for(i=0;i<100;i+=j)
		count++;
	
	
	for(r4=0;r4<i+100+100;r4+=i2c)
		count++;
	
	for(i=0;i<100;i+=i2a)
		count++;
	
	for(i=0;i<300;i+=(short int)(i2a+i2b))
		count++;
	
	for(i=100;i<199;i+=(j+k))
		count++;
	
	
	printf("count=%d \n",count);
	exit (0);
}
int init(int *p1,int *p2,short int *p3,short int *p4)
{
	*p1=10;
	*p2=20;
	*p3=4;
	*p4=10;
}

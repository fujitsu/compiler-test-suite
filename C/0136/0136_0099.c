#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(short int *p3,short int *p4,float *p5);





int main()
{
	short int i2a,i2b,i2c=10;
	int i,count=0;
	float r4;
	init(&i2a,&i2b,&r4);
	
	for(i=1;i<9;i=i2c)
		count++;
	
	
	for(i=1;i<1000;i*=10.3)
		count++;
	
	
	
	for(i=0;i<100;i=(r4+10)+i)
		count++;
	
	
	
	
	for(i=0;i<100;i=i+10.0)
		count++;
	
	for(i=0;i<100;i=i+r4)
		count++;
	
	
	for(i=0;i<100;i+=((r4+10)))
		count++;
	
	for(i=0;i<100;i=i+(float)i2c)
		count++;
	
	for(i=0;i<100;i=i+(float)i2a)
		count++;
	
	for(i=0;i<100;i+=(float)((r4+10.0)))
		count++;
	printf("count=%d \n",count);
	exit (0);
}
int init(short int *p3,short int *p4,float *p5)
{
	*p3=4;
	*p4=10;
	*p5=12.8;
}

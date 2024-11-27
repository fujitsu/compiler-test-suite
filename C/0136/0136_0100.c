#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int init(short int *p3,short int *p4,float *p5);





int main()
{
	short int i2a,i2b,i2c=10;
	int i,j,count=0;
	float r4;
	init(&i2a,&i2b,&r4);
	
	
	for(i=0;i<100;i=100.3-i)
		count++;
	
	
	for(i=0;i<100;i=r4+100)
		count++;
	
	
	
	for(i=0;i<100;i=10.0+(((float)i+10.0)))
		count++;
	
	
	
	
	for(i=0;i<10;i=(float)i2a+(float)i2b)
		count++;
	
	
	
	
	for(i=0;i<100;i=(10.0+(float)(i)))
		count++;
	
	for(i=0;i<100;i=(r4+(float)(i)))
		count++;
	
	
	for(i=0;i<100;i=(((r4+10))+(float)(i)))
		count++;
	
	for(i=0;i<100;i=((float)i2c+(float)(i)))
		count++;
	
	for(i=0;i<100;i=((float)i2a+(float)(i)))
		count++;
	
	for(i=0;i<100;i=((float)((r4+10.0))+(float)(i)))
		count++;
	
	for(i=0,j=100;i<j;j++,i+=3)
	{
		if(i==100){
			i=99;
		}
		count++;
	}
	
	for(i=0;i<10000;i+=j)
	{
		if(i%2){
			j++;
		}
		else{
			j--;
		}
		count++;
	}
	printf("count=%d \n",count);
	exit (0);
}
int init(short int *p3,short int *p4,float *p5)
{
	*p3=4;
	*p4=10;
	*p5=12.5;
}

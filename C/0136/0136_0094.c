#include <stdlib.h>
#include <stdio.h>
#include <math.h>





int main()
{
	int i,j,count=0;

	
	
	for(i=0;i!=100;i++)
		count++;
	for(i=100;0<i;i-=1)
		count--;
	
	for(i=300;i!=100+100;i=i-1)
		count++;
	for(i=0;100>i;i-=(-10))
		count--;
	for(i=0;(i=i+10)<=100;)
		count++;
	for(i=0; -10<(i=-1+i);)
		count--;
	
	
	
	
	for(i=0;i<10.0;i++)
		count++;
	for(i=0,j=100;100>j,10.0>=i;j++,i++)
		count--;
	
	for(i=0;i++<100;)
		count++;
	for(i=200;10.0>(--i);)
		count--;
	for(i=1,j=10;j<100,i<10+10;j++,i++)
		count++;
	for(i=100,j=2;j>-50,1.4-2.8<=i;j--,i=-2.5+i)
		count--;
	for(i=0;10-10!=(i<100);i++)
		count++;
	
	for(i=0;i+10<100;i++)
		count++;
	for(i=0;0!=i+10;i--)
		count--;
	for(i=0;(i<=10)!=1;i++)
		count++;
	for(i=0,j=0;j<100,i<100!=0;i++,j++)
		count--;
	for(i=0;10.0-3.0>i+3.0;i++)
		count++;
	
	
	for(i=1;j>i;i++)
		count++;
	for(i=1000;i>=j;i=i-10)
		count--;
	
	for(i=0;i<j;i-=(-10-10))
		count++;
	for(i=0; j>(i=i+3);)
		count--;
	for(i=100;(i=i-1)!=0;)
		count++;
	
	for(i=0;i<j;count++)
		i++;
	for(i=200;j!=i;count--)
		i--;
	
	
	
	
	
	
	
	
	printf("count=%d \n",count);
	exit (0);
}

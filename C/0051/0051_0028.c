#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(unsigned long int a[]);

int main()
{
	int i;
	unsigned long int a[10]={
		1,1,2,2,3,3,4,4,5,5	};
	sub(a);

	for(i=0;i<10;i+=2){
		printf(" a[%d] = %u ",i,a[i]) ;
		printf(" a[%d] = %u \n",i+1,a[i+1]) ;
	}
	exit (0);
}
int sub(a)
unsigned long int  a[];
{
	unsigned long int b[10]={
		1,2,3,4,5,6,7,8,9,10	};
	unsigned long int c[10]={
		10,12,13,14,15,16,17,18,19,11	};
	int i;
	for(i=0;i<10;i++)
	{
		if (b[i] ^= c[i])
		{
			a[i]=b[i]+c[i];
		}
		else
		{
			a[i]=b[i]*c[i];
		}
	}
}

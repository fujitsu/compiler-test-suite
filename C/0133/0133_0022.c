#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10]={
				1,1,1,1,1,1,1,1,1,1		};
	long int b[10]={
				2,2,2,2,2,2,2,2,2,2		};
	long int c[10]={
				10,10,10,10,10,10,10,10,10,10		};
	unsigned long int m[10],l[10];
	long int i;
	for(i=0;i<10;i++)
	{
		if(i%2==0)
		{
			m[i]=1;
		}
		else
		{
			m[i]=0;
		}
		a[i]=(i+1)*(i+1);
		b[i]=i+1;
	}
	for(i=0;i<10;i++)
	{
		if(m[i]==1)
		{
			c[i]=a[b[i]];
		}
	}
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%ld , b[%ld]=%ld , c[%ld]=%ld\n",i,a[i],i,b[i],
		    i,c[i]);
	}
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[512],b[512];
	long int i,n;
	for(i=0;i<512;i++)
	{
		a[i]=1;
	}
	for(i=0;i<512;i++)
	{
		b[i]=10;
	}
	n=10;
	for(i=0;i<512;i++)
	{
		if (i > 5)
		{
			if (n > 5)
			{
				a[i]=b[i];
				if (b[i] > 7 || i >= 10)
				{
					a[i]=b[i]*5;
				}
				else
				{
					a[i]=b[i]*3;
				}
			}
			else
			{
				a[i]=b[i]*9;
			}
		}
	}
	printf(" ****  ****\n");
	for(i=0;i<512;i++)
	{
		printf(" a[%3ld]= %2ld  b[%3ld]= %2ld",i,a[i],i,b[i]);
		if(((i+1)%3 == 0) && (i != 0)) printf("\n");
	}

	printf("\n");
	exit (0);
}
 

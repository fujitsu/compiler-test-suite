#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[128],b[128];
	long int n,i;
	for(i=0;i<128;i++)
	{
		a[i]=0;
	}
	for(i=0;i<128;i++)
	{
		b[i]=10;
	}
	n=10;
	for(i=0;i<128;i++)
	{
		if (i >= 50)
		{
			if (n <  5)
			{
				a[i]=b[i];
				if (i >  70)
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
	for(i=0;i<128;i++)
	{
		printf(" a[%3ld]= %2ld  b[%3ld]= %2ld ",i,a[i],i,b[i]);
		if(((i+1)%3 == 0)&&(i != 0)) printf("\n");
	}
	printf("\n");
	exit (0);
}
 

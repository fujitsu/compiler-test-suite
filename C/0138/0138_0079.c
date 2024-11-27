#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[64],b[64];
	long int i,n;
	for(i=0;i< 64;i++)
	{
		a[i]=0;
	}
	for(i=0;i< 64;i++)
	{
		b[i]=10;
	}
	n=10;
	for(i=0;i<64;i++)
	{
		if (i > 15)
		{
			if (n > 5)
			{
				a[i]=b[i];
				if (i >  7)
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
	for(i=0;i<64;i++)
	{
		printf(" a[%2ld]= %2ld  b[%2ld]= %2ld \n",i,a[i],i,b[i]);
	}
	exit (0);
}
 

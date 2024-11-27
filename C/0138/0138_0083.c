#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[1024],b[1024];
	long int i,n;
	for(i=0;i<1024;i++)
	{
		a[i]=0;
	}
	for(i=0;i<1024;i++)
	{
		b[i]=10;
	}
	n=10;
	for(i=0;i<1024;i++)
	{
		if (i > 55)
		{
			if (n > 5)
			{
				a[i]=b[i];
				if (i > 555)
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
	for(i=0;i<1024;i++)
	{
		printf(" a[%4ld]= %2ld ",i,a[i]);
		if(((i+1)%5 == 0) && (i != 0)) printf("\n");
	}
	printf("\n");
	exit (0);
}
 

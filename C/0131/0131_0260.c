#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a=1,b=1;
	int c[6];
	printf("<<<<<<  >>>>>> \n");
	for(i=0;a==b;i++)
	{
		c[i-1+1]=10;
		if(a>5)
		{
			a+=2;
		}
		a++;
		b++;
	}
	for(i=0;i<6;i++)
	{
		printf("%d \n",c[i]);
	}
	for(i=0;i<6;i++)
	{
		printf("%d",c[i]);
	}
	printf("\n");
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int          a[10]={
		1,0,1,0,1,1,0,0,0,0	};
	int          b[10]={
		1,1,1,1,1,1,1,1,1,1	};
	int          c[10]={
		0,0,0,0,0,0,0,1,1,1	};
	int          d[10]={
		9,9,9,9,9,3,3,3,3,3	};
	int          e[10]={
		9,8,7,6,5,4,3,2,1,0	};
	int i ;
	for (i=0;i<10;i++)
	{
		if(a[i]==b[i])
		{
			c[i] = d[i]>=e[i];
		}
	}
	for (i=0;i<10;i++) printf("%d",c[i]);
	printf("\n");
	exit (0);
}

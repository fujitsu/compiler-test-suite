#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int z[10]={
		1,2,3,4,5,6,7,8,9,10	};
	int i;
	int *ip;
	for(i=0;i<10;i++)
	{
		for(ip=&z[i];*ip<10;*ip++)
		{
			printf("*** %ld  ***\n",*ip);
		}
	}
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int l,m,i=10,j=10;
	for(l=i--,m=j--;l>0,m>0;l=i--,m=j--)
	{
		printf(" l = %d , m = %d \n",l,m);
	}
	exit (0);
}

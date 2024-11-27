#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j;
	for(i=20,j=10;i>=j;i-=2,j--)
	{
		printf("*** %d ,%d ***\n",i,j);
	}
	exit (0);
}

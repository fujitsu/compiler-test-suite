#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	float inch,finch;
	for(i=1 ; i<10 ; i++)
	{
		finch=i;
		inch=finch/2.54;
		printf("%10.2f %10.2f\n",finch,inch);
	}
	exit (0);
}

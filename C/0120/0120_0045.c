#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	float fn,y1,y2;

	for(i=1;i<10;i++)
	{
		fn=(float)i;
		y1=1.0/fn;
		y2=1.0/(fn*fn);
		printf("%4d %f %f\n",i,y1,y2);
	}
	exit (0);
}

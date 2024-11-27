#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(double rr[]);

int main()
{
	double r[90];
	int    i;
	printf("<<<<<<  >>>>>> \n");
	for (i=0;i<90;i++)
	{
		r[i] = i;
	}
	sub(r);
	exit (0);
}
int sub(rr)
double rr[];
{
	double s[90],c[90],t[90];
	int   i;
	for (i=0;i<90;i++)
	{
		s[i] = rr[i];
		c[i] = rr[i];
		t[i] = rr[i];
	}
	for (i=0;i<90;i++)
	{
		printf("s[%d] = %f \n",i,s[i]);
		printf("c[%d] = %f \n",i,c[i]);
		printf("t[%d] = %f \n",i,t[i]);
	}
}

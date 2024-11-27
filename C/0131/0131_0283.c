#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i;
	double s,a[10];
	printf("<<<<<<  >>>>>> \n");
	for(i=0;i<10;i++)
	{
		a[i]=(double)i;
	}
	s=0.;
	for(i=0;i<10;i++)
	{
		s+=a[i];
	}
	printf(" s = %g \n",s);
	exit (0);
}

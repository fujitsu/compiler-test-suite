#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	float s,fn;

	s=0.0;
	for(i=1;i<10;i++)
	{
		fn=(float)i;
		s=s+1.0/(fn*(fn+1.0));
		printf("%12.6f\n",s);
	}
	exit (0);
}

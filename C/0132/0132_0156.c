#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float a[10],b=1.0;
	for( i=0;i<10;i+=1)
	{
		a[i]=i;
		b=a[i]+b;
	}
	for(i=0;i<10;i++) printf("%10.5f \n",a[i]);
	exit (0);
}

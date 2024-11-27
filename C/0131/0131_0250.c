#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i=1,a[10] ;
	printf("<<<<<<  >>>>>> \n");
	for(i=i+2-3;i<10;i++)
	{
		a[i+1-1] = 10 ;
	}
	for(i=0;i<10;i++)
	{
		printf("**** UNDER ROOP %d **** \n",i);
		printf("a[i]=%d \n",a[i]);
	}
	exit (0);
}

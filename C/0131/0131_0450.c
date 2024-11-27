#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=1,a[20];
	for(i=0;i<20;i+=n++)
	{
		a[i] = i ;
		printf(" %d \n",i);
	}
	for(n=1,i=0;i<20;i+=n++){
		printf(" %d \n",a[i]);
	}
	exit (0);
}

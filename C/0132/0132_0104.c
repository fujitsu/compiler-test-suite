#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	unsigned int a[20],u;
	long int i;
	for(i=0,u=0;i<20;i++,u++){
		a[i]=u;
	}
	for(i=0;i<20;i++){
		printf(" a= %u \n",a[i]);
	}
	exit (0);
}

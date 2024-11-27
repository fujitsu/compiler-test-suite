#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10];
	long int i;
	printf(" *****  ***** \n");
	for(i=0;i<10;i++)
	{
		a[i]=i+1;
	}
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %ld  i[%ld]= %ld \n",i,a[i],i,i);
	}
	exit (0);
}
 

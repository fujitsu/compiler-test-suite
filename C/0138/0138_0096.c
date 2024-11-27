#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[10];
	long int i=1,j;
	long int n=10;
	printf("*****  ***** \n");
	for(j=0;j<n;j++)
	{
		a[j]=i;
	}
	for(j=0;j<10;j++)
	{
		printf(" a[%ld]= %ld \n",j,a[j]);
	}
	exit (0);
}
 

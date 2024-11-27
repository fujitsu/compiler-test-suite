#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	double a[10];
	double s2;
	long int i;
	printf("*****  ***** \n");
	s2=1.0;
	for(i=0;i<10;i++)
	{
		a[i]=s2;
	}
	printf(" s2= %f \n",s2);
	for(i=0;i<10;i++)
	{
		printf(" a[%ld]= %f \n",i,a[i]);
	}
	exit (0);
}
 

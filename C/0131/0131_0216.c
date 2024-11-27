#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func();

int main()
{
	long int a[10],i,j ;
	for(i=0;i<10;i++)
	{
		func() ;
		for(j=0;j<10;j++)
		{
			a[j] = i ;
			a[j] = a[j] + j ;
		}
	}
	for(i=0;i<10;i++) printf(" a[%d] => %d \n",i,a[i]);
	exit (0);
}
int func()
{
	return 0;
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,a[10],sub(),k ;
	for(i=0;i<10;i++)
	{
		a[i] = i ;
	}
	k = sub(a);
	printf(" %d \n",k);
	exit (0);
}
int sub(ax)
int ax[];
{
	int sum=0,i;
	for(i=0;i<10;i++)
	{
		sum = sum + ax[i] ;
	}
	printf(" %d \n",sum);
	return sum ;
}

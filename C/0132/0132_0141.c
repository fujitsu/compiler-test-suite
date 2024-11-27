#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int m[10],i;
	for( i=0;i<10;i++)
	{
		if(i<=5) m[i]=1.0;
		else m[i]=0.0;
	}
	for(i=0;i<10;i++) printf("%d \n",m[i]);
	exit (0);
}

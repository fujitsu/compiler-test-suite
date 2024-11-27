#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i=0,j=10;
	int m=0;
	while(i<10)
	{
label:
		for(j=0;j<100;j++)
		{
			m++;
			if (m<10) {
				goto label;
			}
		}
		i++;
	}
	printf("%d\n",m);
	exit (0);
}

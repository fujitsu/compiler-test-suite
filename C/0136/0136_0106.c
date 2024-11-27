#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i=0;
	int m=0;
	while(i<10)
	{
		m++;
		if (m>10) {
			goto label;
		}
		i++;
label:
		;
	}
	printf("%d\n",m);
	exit (0);
}

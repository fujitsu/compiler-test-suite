#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i=0,m=0;
	while(i<10)
	{
		i++;
		if(m>10) {
			m++;
		}
		else {
			m+=3;
			goto label;
		}
	}
	printf("%d",m);
label:
	;
	exit (0);
}


#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i=0,m=0;
	while(i<10)
	{
		if(m>10){
			goto label;
		}
		i++;
		m++;
	}
label:
	;
	printf("%d\n",m);
	exit (0);
}


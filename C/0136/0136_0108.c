#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i=0,m=0;
	while(i<10)
	{
label:
		;
		i++;
		if(m){
			m++;
		}
		else{
			m+=3;
			goto label;
		}
	}
	printf("%d\n",m);
	exit (0);
}


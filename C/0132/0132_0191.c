#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	double a[20]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,
		                 -2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0	},
	b[20]={
		-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,-2.0,
		                 1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0	},
	x;
	unsigned long int l[10]={
		0,0,0,1,1,1,0,0,0,1	};
	long int i,j;
	j = 0;
	x = b[j];
	for(i=1;i<10;i++)
	{
		a[i+2] = a[i+2] + b[i];
		if (l[i] == 1) {
			a[i+2] = a[i] + b[i];
		}
		else {
			if (x < b[i]) {
				x = b[i];
				j = i;
			}
		}
	}
	for(i=0;i<20;i++)
		printf("a[%ld] => %12.5f\n",i,a[i]);
	printf("x => %12.5f  j => %ld\n",x,j);
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	int i;
	float s={
		1.0	};
	for( i=0;i<100;i++) s=s+1;
	printf("s= %5.2f \n",s);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int p[]={
		19,55,98,23,45,65,12,11,83,72	};
	int total;
	int i;
	total=0;
	for(i=0; i<10 ; i++)
	{
		total=+p[i];
		printf("%10d\n",p[i]);
	}
	
	exit (0);
}


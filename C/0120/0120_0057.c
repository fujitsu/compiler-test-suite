#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	int total=0;
	int j;
	printf("start\n");
	for (i=0;i<1000;i++)
		for(j=0;j<1000;j++)
			total +=1;
	printf("end\n");
	exit (0);
}

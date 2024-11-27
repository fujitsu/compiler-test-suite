#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int a[10] = {
		1,4,8,5,7,9,5,3,7,3	};
	long int max,min;
	int   i,idxx,idxn;
	max=0;
	min=20;
	for (i=0 ; i<10 ; i++)
	{
		if(a[i]>max)
		{
			max=a[i];
			idxx=i;
		}
		else
			if(a[i]<min)
			{
				min=a[i];
				idxn=i;
			}
	}
	for (i=0 ; i<10 ; i++)
	{
		printf("MAX[%d]=%ld \n",idxx,max);
		printf("MIN[%d]=%ld \n",idxn,min);
	}
	exit (0);
}

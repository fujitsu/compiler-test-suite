#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
int sub(long int ax[10]);
int main()                              
{
	long int a[10]={
		1,4,3,5,8,2,7,6,9,7	};
	sub(a);
	exit (0);
}
int sub(ax)                             
long int ax[10];
{
	long int max=0,min=20;
	int      i,idxn,idxx;
	for (i=0 ; i<10 ; i++)
	{
		if(ax[i]>max)
		{
			max=ax[i];
			idxx=i;
		}
		else
			if(ax[i]<min)
			{
				min=ax[i];
				idxn=i;
			}
	}
	printf("max[%d]=%ld \n",max,idxx);   
	printf("min[%d]=%ld \n",min,idxn);
}

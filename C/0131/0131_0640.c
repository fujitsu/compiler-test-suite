#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "000.h"
int sub(float ax[10]);
int main()                              
{
	float a[10]={
		1.2,4.4,3.1,5.5,8.9,2.1,7.4,6.2,9.6,7.2	};
	sub(a);
	exit (0);
}
int sub(ax)                             
float ax[10];
{
	float        max=0.0,min=20.0;
	int          i,idxx,idxn;
	for(i=0 ; i<10 ; i++)
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
	printf("max[%d]=%g \n",idxx,max);   
	printf("min[%d]=%g \n",idxn,min);
}

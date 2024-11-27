#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(float ax[10]);

int main()
{
	float a[10] = {
		3.5,5.3,77.7,45.2,2.6,34.3,78.9,2.23,32.5,47.7	};
	sub(a);
	exit (0);
}
int sub(ax)
float ax[10];
{
	float sumfst,sumscd,sumtrd;
	int      i;
	sumfst=0.0;
	sumscd=0.0;
	sumtrd=0.0;
	for(i=0;i<10;i++)
	{
		if(ax[i]<10)
		{
			sumfst+=ax[i];
		}
		else
			if(ax[i]<50)
			{
				sumscd+=ax[i];
			}
		else
				if(ax[i]<100)
				{
					sumtrd+=ax[i];
				}
	}
	printf ("sumfst = %g \n",sumfst);
	printf ("sumscd = %g \n",sumscd);
	printf ("sumtrd = %g \n",sumtrd);
}

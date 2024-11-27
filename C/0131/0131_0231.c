#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int ax[10]);

int main()
{
	long int a[10] = {
		3,5,77,45,2,34,78,23,32,47	};
	sub(a);
	exit (0);
}
int sub(ax)
long int ax[10];
{
	long int sumfst,sumscd,sumtrd;
	int      i;
	sumfst=0;
	sumscd=0;
	sumtrd=0;
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
	printf ("sumfst=%ld \n",sumfst);
	printf ("sumscd=%ld \n",sumscd);
	printf ("sumtrd=%ld \n",sumtrd);
}

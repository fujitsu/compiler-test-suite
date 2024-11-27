#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int x[]={
		1,2,3,4,5,6,7,8,9,10	};
	int y[]={
		7,4,8,6,9,3,3,2,1,6	};
	int i,sumx,sumy;

	sumx = 0 ;
	sumy = 0 ;
	for(i=0;i<10;i++)
	{
		sumx=sumx+x[i];
		sumy=sumy+y[i];
	}
	printf("%6d %6d\n",sumx,sumy);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	float pm2[]={
		8,4,9,2,1,5,8,6,3,5	};
	int  vmax;
	int maxind,i;
	vmax=pm2[0];
	maxind=1;
	for(i=1;i<10;i++)
	{
		if (vmax <= pm2[i]){
			vmax=pm2[i];
			maxind=i;
		}
	}
	printf("%6d\n",vmax);
	exit (0);
}

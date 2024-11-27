#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int ax[]);

int main()
{
	int i,a[10];
	for(i=0;i<10;i++)
	{
		a[i]=i;
	}
	sub(a);
	exit (0);
}
int sub(ax)
int ax[];
{
	int j;
	for(j=0;j<10;j++)
	{
		printf("**** SUB PRO j = %d **** \n",j);
		printf("a=%d \n",ax[j]);
	}
}

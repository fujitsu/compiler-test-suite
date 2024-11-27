#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct data{
	long int a[5];
}x;
struct data dtable[5]={
	       5,5,5,5,5
};
int main()
{
	int i,j;
	for(j=0;j<5;j++)
	{
		for(i=x.a[j];i<5;i++)
		{
			printf(" *** i = %d *** \n",i);
		}
	}
	exit (0);
}

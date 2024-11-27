#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	int a[]={
		1,3,9,7,4,2,6,8,9,511	};
	int even,odd;

	for(i=0;i<10;i++)
	{
		if(a[i]%2==0)
			printf("even\n");
			else
			printf("odd\n");
	}
	exit (0);
}

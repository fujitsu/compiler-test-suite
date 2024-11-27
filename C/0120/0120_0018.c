#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int a[]={
		1,2,3,4,5	};
	int b[]={
		6,7,8,9,2	};
	int i;
	for(i=1;i<5;i++)
		a[i]=a[i]+b[i];

	printf("%d\n",a[4]);
	exit (0);
}

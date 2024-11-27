#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int i;
	int sum;
	sum=0;
	for(i=0;i<1000;i++)
		sum=sum+i;
	printf("%10d\n",sum);
	exit (0);
}
       

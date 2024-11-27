#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct st2
{
	unsigned long int a :1;
	unsigned long int b :2;
} x[10];
int main()
{
	int sum=0,i ;
	for(i=0;i<10;i++)
	{
		if (x[i].a == 1 | x[i].b == 0)
		{
			sum+=1;
		}
	}
	printf(" sum= %d \n",sum) ;
	exit (0);
}

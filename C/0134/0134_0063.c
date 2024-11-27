#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(long int n,long int m);

int main()
{
	func(0,2);
	exit (0);
}
int func(long int n,long int m)
{
	float a[10]={
				1.0,2.9,3.8,4.7,5.6,6.5,7.4,8.3,9.2,0.1		};
	long int b[10]={
				1,2,3,4,5,6,6,8,9,10		},
	i;
	for(i=0;i<10;m=i+++n)
	{
		a[i] = a[i] * (float)b[m];
	}
	for(i=0;i<10;i++) printf("a[%ld] => %8.1f\n",i,a[i]);
}

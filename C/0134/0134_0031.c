#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func(long int n,long int m);

int main()
{
	func(1,1);
	exit (0);
}
int func(long int n,long int m)
{
	float a[10]={
				1.0,2.9,3.8,4.7,5.6,6.5,7.4,8.3,9.2,0.1		};
	long int i;
	for(i=n++*m++;i<10;i++)
	{
		a[i] = a[i] * (float)m;
	}
	for(i=0;i<10;i++) printf("a[%ld] => %8.1f\n",i,a[i]);
}

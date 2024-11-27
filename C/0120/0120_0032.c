#include <stdlib.h>
#include <stdio.h>
#include <math.h>  
int main()
{
	double a[10];
	double b[10]={
		0.6,8.3,6.2,0.9,9.0,4.2,2.8,6.9,7.7,9.3	};
	int i ;
	for(i=0;i<10;i++)
		a[i]=sin(b[i]);
	for(i=0;i<10;i++)
		printf("%9.3f\n",a[i]);
	exit (0);
}

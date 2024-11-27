#include <stdlib.h>
#include <stdio.h>

#include <math.h>
int sub(double a[], float b[]);
int l=10;
int main()
{
	static double a[10]={
		1,2,3,4,5,6,7,8,9,0	};
	static float b[10]={
		5,6,7,8,9,10,1,2,3,4	};
	int i;
	sub(a,b);
	printf("\n a,b \n");
	for(i=0;i<10;i++) printf("  %15.6f %15.6f \n",a[i],b[i]);
	exit (0);
}

int sub(a,b)
double a[];
float  b[];
{
	static double c[10]={
		1,2,3,4,5,6,7,8,9,10	};
	int n=0,m=10,i,j;
	for(i=n,j=i+1;j<m;i+=2,j+=2)
	{
		a[i] = sin(c[i]) * j ;
		a[i+1] = cos(c[j]) / j ;
	}
	for(i=0;i<10;i++)
	{
		if (sin(a[i])>=cos(c[i])) b[i] = cos((double)i);
	}
}

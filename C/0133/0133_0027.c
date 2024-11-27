#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int m1026 (long int a[10], long int b[10], long int c[10], unsigned long int m[20], long int n);

int main()
{
	long int a[10],b[10],c[10];
	static unsigned long int m[20];
	long int i;
	for(i=0;i<10;i++)
	{
		a[i]=-(i+1);
		b[i]=(i+1)*(i+1);
		c[i]=(i+1)*(i+1)*(i+1);
	}
	for(i=0;i<20;i++)
	{
		if(i<10)
		{
			m[i]=1;
		}
		else
		{
			m[i]=0;
		}
	}
	m1026(a,b,c,m,10);
	for(i=0;i<10;i++)
	{
		printf("a[%ld]=%ld , b[%ld]=%ld , c[%ld]=%ld\n",i,a[i],
		    i,b[i],i,c[i]);
	}
	for(i=0;i<20;i++)
	{
		printf("m[%ld]=%lu\n",i,m[i]);
	}
	exit (0);
}
int m1026 (long int a[10], long int b[10], long int c[10], unsigned long int m[20], long int n)
{
	long int j,i;
	j=1;
	while(j==1)
	{
		for(i=0;i<n;i++)
		{
			b[i]=a[i];
		}
		for(i=0;i<n;i++)
		{
			if(m[i]==1)
			{
				a[i]=c[i];
			}
		}
		for(i=0;i<10;i++)
		{
			printf("a[%ld]=%ld , b[%ld]=%ld , c[%ld]=%ld\n",i,a[i],
			    i,b[i],i,c[i]);
		}
		j=j+1;
	}
	return 0;
}

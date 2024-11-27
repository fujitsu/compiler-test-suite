#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int s1023 (unsigned long int l[], long int a[], long int b[], long int n);

int main()
{
	long int a[30]={
				1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
				                                                                 1,1,1		};
	long int b[30]={
				10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,
				                                   10,10,10,10,10,10,10,10,10,10,10,10		};
	unsigned long int l[1000];
	long int i;
	for(i=0;i< 1000;i++)
	{
		l[i]=0;
	}
	for(i=0;i<30;i+=2)
	{
		a[i]=i;
		b[i]=-((i+1)*(i+1));
		l[i]=1;
	}
	s1023(l,a,b,30);
	exit (0);
}
int s1023 (unsigned long int l[], long int a[], long int b[], long int n)
{
	long int icount, i;
	icount=1;
	while(icount<=2)
	{
		for(i=0;i<1000;i++)
		{
			if(l[i]) a[i]=b[i==1];
		}
		for(i=0;i<30;i++)
		{
			printf("a[%ld]=%ld , b[%ld]=%ld\n",i,a[i],i,b[i]);
		}
		icount++;
	}
}

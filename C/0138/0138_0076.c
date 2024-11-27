#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a1[100],b1[100],c1[100],d1[100];
	double a2[100],b2[100],c2[100],d2[100];
	long double a3[10],b3[10],c3[10],d3[10];
	long int n,i;
	n=10;
	for(i=0;i<100;i++)
	{
		if (i > 4)
		{
			a1[i]=1.0;
			a2[i]=1.0;
			b1[i]=2.0;
			b2[i]=2.0;
		}
		else
		{
			a1[i]=1.0;
			a2[i]=1.0;
			b1[i]=2.0;
			b2[i]=2.0;
		}
		c1[i]=pow(a1[i],n);
		c2[i]=pow(b2[i],c1[i]);
		d2[i]=pow(c2[i],n);
		d1[i]=pow(a1[i],n);
		if (d1[i] >  10.0)
		{
			if (n == 10)
			{
				a2[i]=pow(d2[i],10);
				b2[i]=pow(a2[i],d1[i]);
			}
			else
			{
				a2[i]=pow(d2[i],n);
			}
			d2[i]=pow(a2[i],n);
		}
	}
	for(i=0;i<10;i++)
	{
		d3[i]=1.0;
		c3[i]=1.0;
	}
	for(i=0;i<100;i++)
	{
		if (i+1 <= 10)
		{
			b3[i]=pow(b1[i],n);
		}
		else
		{
			a1[i]=pow(b1[i],n);
		}
		if (i+1 <= n)
		{
			a3[i]=pow(c3[i],n);
		}
	}
	printf(" ***  ***\n");
	for(i=0;i<100;i++)
	{
		printf(" ***   [%ld]   ***\n",i);
		a1[i] = (a1[i] > 0.0)?
		    (float)(int)(a1[i]+0.5):(float)(int)(a1[i]-0.5);
		printf(" a1[%ld]= %f a2[%ld]= %f \n",i,a1[i],i,a2[i]);
		printf(" b1[%ld]= %f b2[%ld]= %f \n",i,b1[i],i,b2[i]);
		printf(" c1[%ld]= %f c2[%ld]= %f \n",i,c1[i],i,c2[i]);
		printf(" d1[%ld]= %f d2[%ld]= %f \n",i,d1[i],i,d2[i]);
	}
	for(i=0;i<10;i++) {
		printf(" a3[%ld]= %f   ",i,(double)a3[i]);
		printf(" b3[%ld]= %f \n",i,(double)b3[i]);
		printf(" c3[%ld]= %f   ",i,(double)c3[i]);
		printf(" d3[%ld]= %f \n",i,(double)d3[i]);
	}
	exit (0);
}

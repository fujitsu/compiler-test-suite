#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1 (int a[], int b[], int c);

int main (void)
{
	int a[20],b[20],c;
	int ttl,cnt,i;
	for (i=0;i<20;i++)
	{ 
		a[i]=i;
		b[i]=i+11;
	}
	ttl=0 ;
	for (i=0,cnt=0;i<10;i++)
	{  
		ttl+=a[i];
		cnt+=1   ;
	}
	printf("total = %d  count= %d ",ttl,cnt);
	c=2 ;
	sub1(a,b,c);
	exit (0);
}
int sub1 (int a[], int b[], int c)
{  
	int  i,ttl;
	for (i=0;i<20;i++)
	{
		a[i]=a[i]+b[i]*c;
	}
	i=0;
	ttl=0;
	while (i<20)
	{
		ttl+=a[i];
		i++;
	}
	printf(" sub1 ttl= %d\n",ttl);
	return 0;
}

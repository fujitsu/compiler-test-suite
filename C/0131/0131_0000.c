#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (long int *x, long int *y);

int main (void)
{
	long int a[20],b[20] ;
	long int ttl,cnt,i;
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
		printf("ttl= %d ",ttl);
	}
	printf("total = %d  count= %d \n",ttl,cnt);
	sub(a,b);
	exit (0);
}
int sub (long int *x, long int *y)
{
	long int  *z;
	long int  i;
	z=x;
	for(i=0;i<20;i++)
	{
		*x = *x + *y;
		x++;
	}
	for(i=0;i<20;i++)
	{
		printf(" z= %d \n",*z++);
	}
}

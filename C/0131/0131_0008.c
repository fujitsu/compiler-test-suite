#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (long int *k1, long int *k2, long int *k3);


int main (void)
{
	long int a[10]={
		1,2,3,4,5,6,7,8,9,10	};
	long int b[10]={
		10,9,8,7,6,5,4,3,2,1	};
	long int i,k1,k2,k3;
	
	k1=1;
	k2=10;
	k3=1;
	for(i=k1;i<k2;i+=k3)
	{
		a[i]=a[i]+b[i];
	}
	printf(" ** TEST ITEM NO.1 ** \n");
	for(i=0;i<10;i++)
	{
		printf(" a= %d ",a[i]);
	}
	printf("\n");
	
	k1=1;
	k2=10;
	k3=-1;
	for(i=k1;i<k2;i-=k3)
	{
		a[i]=a[i]+b[i];
	}
	printf(" ** TEST ITEM NO.2 ** \n");
	for(i=0;i<10;i++)
	{
		printf(" a= %d ",a[i]);
	}
	printf("\n");
	
	k1=9;
	k2=1;
	k3=-1;
	sub(&k1,&k2,&k3);
	for(i=k1;i<=k2;i+=k3)
	{
		a[i]=a[i]+b[i];
	}
	printf(" ** TEST ITEM NO.3 ** \n");
	for(i=0;i<10;i++)
	{
		printf(" a= %d ",a[i]);
	}
	printf("\n");
	
	k1=1;
	k2=9;
	k3=1;
	sub(&k1,&k2,&k3);
	for(i=k1;i>=k2;i+=k3)
	{
		a[i]=a[i]+b[i];
	}
	printf(" ** TEST ITEM NO.4 ** \n");
	for(i=0;i<10;i++)
	{
		printf(" a= %d ",a[i]);
	}
	printf("\n");
	exit (0);
}
int sub (long int *k1, long int *k2, long int *k3)
{
	long int a;
	a=(*k1)+(*k2)+(*k3);
	printf(" ** sub a=%d \n",a);
}

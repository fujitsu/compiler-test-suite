#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int main()
{
	long int i;
	long int a[20],b[20];
	long int c[20];
	unsigned long int l[20];
	for(i=0;i<20;i++)
	{
		a[i]=i;
		b[i]=i-1;
		c[i]=20-i;
		l[i]=(a[i]>c[i]);
	}
	for(i=0;i<20;i++)
	{
		a[i]= i>>2 ;
		c[i]= i<<3 ;
		b[i]= i/8  ;
		l[i] <<=4  ;
	}
	printf(" main result \n");
	for(i=0;i<20;i++)
	{
		printf("a=%ld b=%ld c=%ld l=%lu \n",a[i],b[i],c[i],l[i]);
	}
	exit (0);
}

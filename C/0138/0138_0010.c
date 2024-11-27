#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[1024];
	long int j32,j64,j128,j256,j512,j1024;
	static int i;
	for(i=0;i<1024;i++)
	{
		a[i]=0;
	}
	j32=0;
	j64=0;
	j128=0;
	j256=0;
	j512=0;
	j1024=0;
	for(i=0;i<32;i++)
	{
		j32=j32+1;
		a[i]=a[i]+1;
	}
	for(i=0;i<64;i++)
	{
		a[i]=a[i]+1;
		j64=j64+1;
	}
	for(i=0;i<128;i++)
	{
		j128=j128+1;
		a[i]=a[i]+1;
	}
	for(i=0;i<256;i++)
	{
		j256=j256+1;
		a[i]=a[i]+1;
	}
	for(i=0;i<512;i++)
	{
		j512=j512+1;
		a[i]=a[i]+1;
	}
	for(i=0;i<1024;i++)
	{
		j1024=j1024+1;
		a[i]=a[i]+1;
	}
	printf("  *****  *****\n");
	printf(" j32= %ld  j64= %ld  j128= %ld",j32,j64,j128);
	printf("  j256= %ld  j512= %ld  j1024= %ld \n",j256,j512,j1024);
	for(i=0;i<1024;i++)
	{
		printf(" a[%4d]= %ld ",i,a[i]);
		if(((i+1)%6 == 0) && i != 0) printf("\n");
	}
	printf("\n");
	exit (0);
}

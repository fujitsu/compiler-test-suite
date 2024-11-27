#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[32],b[64],c[128],d[256],e[512],f[1024];
	static int j;
	for(j=0;j<32;j++)
	{
		a[j]=32;
	}
	for(j=0;j<64;j++)
	{
		b[j]=a[1]+32;
	}
	for(j=0;j<128;j++)
	{
		c[j]=b[1]+64;
	}
	for(j=0;j<256;j++)
	{
		d[j]=c[1]+128;
	}
	for(j=0;j<512;j++)
	{
		e[j]=d[1]+256;
	}
	for(j=0;j<1024;j++)
	{
		f[j]=e[1]+512;
	}
	for(j=0;j<512;j++)
	{
		e[j]=f[1];
	}
	for(j=0;j<256;j++)
	{
		d[j]=e[1];
	}
	for(j=0;j<128;j++)
	{
		c[j]=d[1];
	}
	for(j=0;j<64;j++)
	{
		b[j]=c[1];
	}
	for(j=0;j<32;j++)
	{
		a[j]=b[1];
	}
	for(j=0;j<1024;j++)
	{
		f[j]=b[10];
	}
	for(j=0;j<10;j++)
	{
		d[j]=c[10];
	}
	printf("  *****  *****\n");
	printf("  a[  32]= %ld  b[  63]= %ld",a[31],b[63]);
	printf("  c[ 127]= %ld  d[ 255]= %ld\n",c[127],d[255]);
	printf("  e[ 511]= %ld  f[1023]= %ld \n",e[511],f[1023]);
	exit (0);
}
 

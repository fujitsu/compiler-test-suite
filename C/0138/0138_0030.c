#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{

	long int a[256],b[256],c[256],d[256];
	static int i,j;
	for(j=0;j<10;j++)
	{
		a[j]=j;
		b[j]=a[j]+1+(a[j]*1)*1+((a[j]+10)*2-10);
		c[j]=((b[j]-1)-(b[j]-1))+(b[j]-1);
		d[j]=a[j]+b[j]+c[j]+2+(b[j]-1);
	}
	printf("  *****  *****\n");
	printf(" a[1]= %ld  b[1]= %ld ",a[1],b[1]);
	printf(" c[1]= %ld  d[1]= %ld \n",c[1],d[1]);
	exit (0);
}
 

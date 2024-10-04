#include <stdlib.h>
#include <math.h>




#include <stdio.h>
int sub(long int a[], long int b[], long int c[]);
int main()
{
	long int a[100],b[100],c[100];
	long int i;

	for(i=0;i<100;i++) {
		a[i]=1;
		b[i]=i;
		c[i]=1;
	}
	sub(a,b,c);
	printf("a=%d b=%d c=%d \n",a[99],b[99],c[99]);
	exit (0);
}
int sub(a,b,c)
long int a[],b[],c[];
{
	long int i;

	for(i=0;i<100;i++){
		a[i]=a[i]+b[i]+c[i];
	}
}

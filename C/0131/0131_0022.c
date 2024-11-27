#include <stdlib.h>
#include <math.h>
#include <stdio.h>




int main()
{
	long int i,n;
	long int a[10],b[10],c[10];
	a[0]=1;
	for(i=0;i<10;i++){
		a[i]=i%2;
		b[i]=i%3;
		c[i]=i%4;
	}
	for(i=0;i<10;i++){
		a[i]=b[i] == c[i];
		b[i]=a[i] == c[i];
	}
	for(i=0;i<10;i++){
		printf(" a=%d  b=%d \n",a[i],b[i]);
	}
	exit (0);
}

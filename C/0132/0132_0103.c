#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n;
	int      a[20],b[20],c[20];
	for(i=0;i<20;i++){
		a[i]=i%5;
		b[i]=i%3;
		c[i]=i;
	}
	for(i=0;i<20;i++){
		a[i]=b[i]<<2;
	}
	for(i=0;i<20;i++){
		b[i]=c[i]>>2;
	}
	printf(" ***  *** \n");
	for(i=0;i<20;i++){
		printf(" a= %d  b= %d  c= %d \n",a[i],b[i],c[i]);
	}
	exit (0);
}

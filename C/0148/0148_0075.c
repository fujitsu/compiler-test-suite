#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main()
{
	float a[10],b[10],c[10];
	static int i,j;
	for(i=0;i<10;i++){
		a[i]=1.0;
		b[i]=2.0;
		c[i]=3.0;
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[i]+=b[i]+c[i];
		}
	}
	for(i=0;i<10;i++){
		printf("  A[%d] ==>  %16.7f\n",i,a[i]);
	}
	exit (0);
}

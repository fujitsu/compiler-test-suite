#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
  float x;
} a[10],b[10],c[10];
int main()
{
	static int i,j;
	for(i=0;i<10;i++){
		a[i].x=1.0;
		b[i].x=2.0;
		c[i].x=3.0;
	}
	for(j=0;j<10;j++){
		for(i=0;i<10;i++){
			a[i].x+=b[i].x+c[i].x;
		}
	}
	for(i=0;i<10;i++){
		printf("  A[%d] ==>  %16.7f\n",i,a[i].x);
	}
	exit (0);
}

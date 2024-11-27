#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	long double  a[10]={
		0,1,2,3,4,5,6,7,8,9	},
	b[10];
	int i;
	for(i=0;i<10;i++) b[i]=a[i]*2;
	for(i=0;i<10;i++) {
		if(b[i] == 2.0l*(long double)i)
			printf("### ok ###\n");
		else
			printf("### ng ###\n");
	}
	exit (0);
}

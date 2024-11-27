#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
	static char a[10]={"abcde"};
	static double b[10]={1.0,2.0,3.0,4.0,5.0};
	static float c=10.0;
	long int i;
	
	for(i=0;i<5;i+=5) {
		printf("a[%d] = %c  a[%d] = %c  a[%d] = %c  a[%d] = %c  a[%d] = %c\n",i,a[i],i+1,a[i+1],i+2,a[i+2],i+3,a[i+3],i+4,a[i+4]);
		printf("b[%d] = %f  b[%d] = %f  b[%d] = %f  b[%d] = %f  b[%d] = %f\n",i,b[i],i+1,b[i+1],i+2,b[i+2],i+3,b[i+3],i+4,b[i+4]);
	}
	printf("c = %f\n",c);
	exit(0);
}

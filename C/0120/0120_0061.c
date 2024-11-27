#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
#define SIZE1 3
#define SIZE2 5
	int a[]={
		1,3,5	};
	int b[SIZE2];
	int i;
	for(i=0; i<SIZE1 ; i++)
		printf("%d %d\n",i,a[i]);
	exit (0);
}

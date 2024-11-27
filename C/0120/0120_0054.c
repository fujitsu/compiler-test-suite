#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int max (int x, int y);
int main()
{
	int a,b;
	a = 6 ;
	b = 12;
	printf("max = %d\n",max(a,b));
	exit (0);
}
int max (x,y)
int x,y;
{
	return (x>y?x:y);
}

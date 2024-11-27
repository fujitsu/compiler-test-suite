#include <stdlib.h>
#include <math.h>
#include<stdio.h>  
int fact(int n);
int main()
{
	int a;
	a=5;
	printf("Factorial %d\n",a,fact(a));
	exit (0);
}
int fact( int n)
{
	if(n==0) return 1;
	else return fact(n-1)*n;
}

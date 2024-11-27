#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int k,l,n,i;
	k=l=0;
	n=-1;

	for(i=0;i<10;i++)
	{
		n=(-1)*n;
		k=k+n*i;
		l=l+i*(i+1);
	}
	printf("%4d %4d\n",k,l);
	exit (0);
}

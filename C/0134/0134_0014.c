#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int n);

#define a(i,j,k)   a[(i*3+j)*3+k]
int main()
{
	sub(3);
	exit (0);
}
int sub(long int n)
{
	static int a[27],i,j,k;
	for(i=0;i<n;i++)
		for(j=0;i<n;i++)
			for(k=0;k<n;k++)
			{
				a(i,j,k) = i;
			}
	for(i=0;i<27;i++)
	{
		printf("a[%d] => %d \n",i,a[i]) ;
	}
}

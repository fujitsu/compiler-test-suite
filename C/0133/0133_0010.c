#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	long int a[10]={
				1,1,1,1,1,1,1,1,1,1		};
	long int b[10]={
				10,10,10,10,10,10,10,10,10,10		};
	long int c[10]={
				100,100,100,100,100,100,100,100,100,100		};
	long int m[10]={
				1,1,1,1,1,1,1,1,1,1		};
	long int n=10;
	long int icount,j,i;
	icount=1;
	j=0;
	for(i=0;i<n;i++)
	{
		if ( m[i] >  0 )
		{
			a[j]=b[j];
			j++;
		}
		c[i]=i;
	}
	for(i=0;i<10;i++){
		printf("a[%ld]=%ld,b[%ld]=%ld,c[%ld]=%ld,m[%ld]=%ld\n",
		    i,a[i],i,b[i],i,c[i],i,m[i]);
	}
	icount++;
	exit (0);
}

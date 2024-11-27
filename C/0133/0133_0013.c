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
	long int j,i;
	j=1;
	for(i=0;i<n;i++)
	{
		if(m[i]>0)goto LBL_20 ;
		a[i]=b[i];
		c[i]=i;
	}
	for(i=0;i<10;i++){
		printf("a[%ld]=%ld,b[%ld]=%ld,c[%ld]=%ld,m[%ld]=%ld\n",
		    i,a[i],i,b[i],i,c[i],i,m[i]);
	}
LBL_20:
	for(i=0;i<10;i++){
		printf("a[%ld]=%ld,b[%ld]=%ld,c[%ld]=%ld,m[%ld]=%ld\n",
		    i,a[i],i,b[i],i,c[i],i,m[i]);
	}
	exit (0);
}

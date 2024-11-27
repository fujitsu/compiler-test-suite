#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define MIN(x,y)  (((x)>(y))?(y):(x))                                  
int main()
{
	long int k[10]={
		1,2,3,4,5,6,7,8,9,0	};
	float    a[10]={
		10.0,9.0,8.0,7.0,6.0,5.0,4.0,3.0,2.0,1.0	},
	b[10]={
		2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0	},
	s;
	long int i,j,m,l,n;
	n = (long int)(k[0]*10);
	for(i=0;i<n-1;i++)
	{
		l = k[i] + i;
		m = MIN(l,9);
		k[i+1] = l + k[i];
		for(j=0;j<m;j++)
		{
			s = b[j] + j;
			b[j+1] = s + b[j];
		}
	}
	for(i=0;i<10;i++)
		printf("k[%ld]=> %ld   b[%ld]=> %f\n",i,k[i],i,b[i]);
	exit (0);
}

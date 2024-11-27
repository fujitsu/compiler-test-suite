#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float a[10]={
				1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0		},
	b[10]={
				0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0		},
	t;
	long int i,j,n;
	n = (long int)(a[0]*10);
                                                    
	for(i=0;i<10;i++)
	{
		for(j=0;j<n-1;j++)
		{
			t = a[j] + j;
			a[j+1] = t + a[j];
		}
		b[i] = a[i];
	}
	for(i=0;i<10;i++)
		printf("a[%ld]=> %f\n",i,a[i]);
	printf("t => %7.2f\n",t);
	exit (0);
}

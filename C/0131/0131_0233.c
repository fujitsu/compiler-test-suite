#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	long int a[10]={
		10,9,8,7,6,5,4,3,2,1	};
	long int b[10],c[10],d[10];
	int  i,j=1;
	for (i=0;i<10;i++)
	{
		a[i]=a[i]/j;
		switch(a[i])
		{
		case 1:                          
			j++;
			printf("a[%d]=%ld \n",i,a[i]);
			break;
		case 2:                          
			b[i]=a[i];
			j++;
			printf("b[%d]=%ld \n",i,b[i]);
		case 3:                          
			c[i]=a[i];
			j++;
			printf("c[%d]=%ld \n",i,c[i]);
		default:                         
			d[i]=a[i];
			printf("d[%d]=%ld \n",i,d[i]);
		}
	}
	exit (0);
}

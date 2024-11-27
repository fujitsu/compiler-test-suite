#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int ax[]);

int main()
{
	long int a[10]={
		10,9,8,7,6,5,4,3,2,1	};
	int  i;
	float j=0.5;
	for (i=0;i<10;i++)
	{
		a[i]=a[i]/j;
		sub(a);
	}
	exit (0);
}
int sub(ax)
long int ax[];
{
	double   b[10],c[10],d[10];
	int      i;
	for(i=0;i<10;i++){
		switch(ax[i])
		{
		case 1:                          
			printf("a[%d]=%ld \n",i,ax[i]);
			break;
		case 2:                          
			b[i]=ax[i];
			printf("b[%d]=%f \n",i,b[i]);
		case 3:
			c[i]=ax[i];
			printf("c[%d]=%f \n",i,c[i]);
		default:                         
			d[i]=ax[i];
			printf("d[%d]=%f \n",i,d[i]);
		}
	}
}

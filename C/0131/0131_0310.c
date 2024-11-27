#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(long int ax[10]);

int main()
{
	long int a[10]={
		10,9,8,7,6,5,4,3,2,1	};
	int  i,j=1;
	for (i=0;i<10;i++){
		a[i]=a[i]/j;
		sub(a);
		j++;
	}
	exit (0);
}
int sub(ax)
long int ax[10];
{
	long int b[10],c[10],d[10],j;
	for(j=0;j<10;j++){
		switch(ax[j]){
		case 1:                          
			printf("a[%d]=%ld \n",j,ax[j]);
			break;
		case 2:                          
			b[j]=ax[j];
			printf("b[%d]=%ld \n",j,b[j]);
		case 3:
			c[j]=ax[j];
			printf("c[%d]=%ld \n",j,c[j]);
		default:                         
			d[j]=ax[j];
			printf("d[%d]=%ld \n",j,d[j]);
		}
	}
}

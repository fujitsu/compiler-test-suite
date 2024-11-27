#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,n=0,j,a[10];
	for(i=0;;i++)
	{
		a[i] = i + 1 ;
		if(n==9){
			break;
		}
		n++;
	}
	for(j=0;j<10;j++){
		printf(" a[%d] => %d \n",j,a[j]);
	}
	exit (0);
}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=0,a[11];
	for(i=1;i==j+1;i++)
	{
		a[i] = i + 1 ;
		if(j==9){
			break;
		}
		j++;
	}
	for(i=1;i<=10;i++){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}

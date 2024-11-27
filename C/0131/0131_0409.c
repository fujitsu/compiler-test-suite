#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int i,j=0;
	int a[10];
	for(i=0;i==j;i++){
		a[i] = i + 1 ;
		if(j==9){
			break;
		}
		j++;
	}
	for(i=0;i<10;i++){
		printf(" a[%d] => %d \n",i,a[i]);
	}
	exit (0);
}

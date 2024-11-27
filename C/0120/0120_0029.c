#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	static  int array[2][5]={
		      1,2,3,4,5,6,7,8,9,10 	};
	int i,j;
	for(i=0;i<2;i++)
		for(j=0;j<5;j++)
			printf("%-2d,%-2d = %d\n",i,j,array[i][j]);
	exit (0);
}
 

#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	static  int array[3][5]={
		         {
		            1,2,3,4,5          },{
		            11,12,13,14,15        },{
		            21,22,23,24,25          }	};
	int i,j;
	for(i=0;i<3;i++)
		for(j=0;j<5;j++)
			printf("%-2d,%-2d = %d\n",i,j,array[i][j]);
	exit (0);
}

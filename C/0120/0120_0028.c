#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	static  int array[10]={
		          1,2,3,4,5,6,7,8	};
	int i;
	for (i=0;i<10;i++)
		printf("%-3d %d\n",i,array[i]);
	exit (0);
}

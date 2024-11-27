#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func (int sum);

int val[10]={
	1,2,3,4,5,6,7,8,9,10},
i ;
int main (void)
{
	static int sum ;
	sum = 0 ;
	func(sum) ;
	printf(" sum => %d \n",sum) ;
	exit (0);
}
int func (int sum)
{
	for(i=0;i<10;i++)
	{
		sum = sum + val[i] ;
	}
	printf(" sum => %d \n",sum) ;
}

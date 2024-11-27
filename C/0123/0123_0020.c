#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i,ary[10]={
	0,1,2,3,4,5,6,7,8,9};
int *s;
int main()
{
	s=&ary[0];
	for(i=0;i<9;i++)
	{
		s=s+1;
	}
	printf("%d\n",*s) ;
	exit (0);
}

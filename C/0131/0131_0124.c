#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	struct st1
	{
		int a[10] ;
	} tag1 ;
	struct st2
	{
		int a ;
	} tag2[10] ;
	struct st3
	{
		int a[10] ;
	} tag3[10] ;
	int i ;
	for(i=0;i<10;i++)
	{
		tag1.a[i]    = i ;
		tag2[i].a    = i ;
		tag3[i].a[i] = i ;
		printf(" %d %d %d \n",tag1.a[i],tag2[i].a,tag3[i].a[i]) ;
	}
	exit (0);
}

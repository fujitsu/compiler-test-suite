#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tagx {
	int ary[10] ;
} namex ;
int func (short int k, struct tagx *point);
int main (void)
{
	struct tagx *point ;
	int i ;
	
	point = &namex ;
	point->ary[0] = 10 ;
	point->ary[1] = 9  ;
	point->ary[2] = 8  ;
	point->ary[3] = 7  ;
	point->ary[4] = 6  ;
	point->ary[5] = 5  ;
	point->ary[6] = 4  ;
	point->ary[7] = 3  ;
	point->ary[8] = 2  ;
	point->ary[9] = 1  ;
	func(10,&namex) ;
	for(i=0;i<10;i++)
	{
		printf("%5d \n",point->ary[i]) ;
	}
	exit (0);
}

int func (short int k, struct tagx *point)
{
	int i , tmp ;
	for(i=0;i<k-1;i++)
	{
		if(point->ary[i] > point->ary[i+1])
		{
			tmp             = point->ary[i]   ;
			point->ary[i]   = point->ary[i+1] ;
			point->ary[i+1] = tmp             ;
		}
	}
	if(k != 2)
	{
		func(k-1,&namex) ;
	}
}

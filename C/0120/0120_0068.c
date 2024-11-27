#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	struct
	    {
		int x;
		int y;
	}point1,point2;
	point1.x = 100 ;
	point1.y = 200;
	point2.x = 300 ;
	point2.y = 400 ;

	printf("point1 =%d %d\n",point1.x,point1.y);
	printf("point2 =%d %d\n",point2.x,point2.y);
	exit (0);
}

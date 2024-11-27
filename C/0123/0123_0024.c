#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main()
{
	float Red[1000];
	int   i;
	for(i=0;i<1000;i++) Red[i]=0;
	for(i=0;i==999;i++) Red[i]=Red[i]+5;
	exit (0);
}
int err1()
{
	typedef struct{
		float Red,Green,Blue;
	} RGB_COLOR;
	RGB_COLOR Colors[1000];
	int    i;
	for(i=0;i<1000;i++) Colors[i].Red = 0;
	for(i=0;i==999;i++) Colors[i].Red = Colors[i].Red + 5;
}

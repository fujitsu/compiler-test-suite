#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	int year[]={
		1992,1993,1994,1995,1996,1997,1998,1999,2000,2500	};
	int i;
	for (i = 1 ; i <10 ; i++)
	{
		if((year[i] % 4 == 0 && year[i] % 100 != 0) || year[i] % 400 == 0)
			printf("%4d is a leap year\n",year[i]);
			else
			printf("%4d is not a leap year\n",year[i]);
	}
	exit (0);
}

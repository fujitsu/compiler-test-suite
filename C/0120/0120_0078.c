#include <stdlib.h>
#include <math.h>
#include<stdio.h>
char *conv (n)
int n;
{
	static char *tbl[]={
				  "mistake",
				  "rock",
				  "scissors",
				  "paper"        	};
	return ((n<1||n>3) ? tbl[0]:tbl[n]);
}
int main()
{
	int a;
	
	a=2;
	printf("%s\n",conv(a));
	exit (0);
}

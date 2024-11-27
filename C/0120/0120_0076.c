#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	static char *ptr="this is string constant";
	static char string[]="  and another string";
	char *count=ptr;
	char *count1 = &string[0];
	char c;
	for ( ;((c=putchar(*count++)) != 0);) ;
	putchar(0x0a);
	while ((c=putchar(*count1++)) != 0) ;
	putchar(0x0a);
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include<stdio.h>
static char pattern[] = "abcdef";
int main()
{
	char *ptr;
	int i;
	for (ptr = &pattern[0];*ptr !='\0';)
		printf  ("%c",*ptr++);
	printf("\n");
	exit (0);
}

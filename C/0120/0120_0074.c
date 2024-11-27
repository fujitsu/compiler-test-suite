#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	char *ptr;
	int i;
	ptr = "abcdefg";
	for (;*ptr != '\0';)
		printf("%c",*ptr++);
	printf("\n");
	exit (0);
}

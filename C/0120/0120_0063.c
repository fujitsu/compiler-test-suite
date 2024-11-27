#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main(int argc, char *argv[])
{
	while (--argc> 0)
		printf("%s%s",*++argv,(argc > 1) ? " " : "");
	printf("OK");
	printf("\n");
	exit (0);
}

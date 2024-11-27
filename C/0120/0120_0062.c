#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main(int argc,char *argv[])
{
	int i;

	for(i = 1; i <argc; i++)
		printf("%s%s", argv[i], (i< argc-1) ? " ":"");
	printf("OK");
	printf("\n");
	exit (0);
}

#include <stdlib.h>
#include <math.h>
#include<stdio.h>
int main()
{
	char pattern [30];
	int i;
	pattern[0] ='a';
	pattern[1] ='b';
	pattern[2] ='c';
	pattern[3] ='d';
	pattern[4] ='e';
	pattern[5] ='f';
	pattern[6] ='g';
	pattern[7] ='\0';
	for(i = 0 ; pattern[i] != '\0'; i++)
		printf("%c",pattern[i]);
	printf("\n");
	printf("%s\n",pattern);
	exit (0);
}

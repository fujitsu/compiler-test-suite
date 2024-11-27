#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#define   LOWER   0
#define   UPPER   300
#define   STEP    20
int main()
{
	int fahr;
	for (fahr = LOWER;fahr <= UPPER; fahr = fahr + STEP)
		printf("%3d \n",fahr,(5.0/9.0)*(fahr-32));
	exit (0);
}

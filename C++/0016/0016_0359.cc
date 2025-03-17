#include <stdlib.h>
#include <string.h>
#include <stdio.h>

char      q1 = '1';
short     q2 = 2;
int       q3 = 3;
long	  q4 = 4;
signed	  q5 = 5;
unsigned  q6 = 6;
float 	  q7 = 7;
double	  q8 = 8;


int main(void)
{
	char      l1 = '1';
	short     l2 = 2;
	int       l3 = 3;
	long	  l4 = 4;
	signed	  l5 = 5;
	unsigned  l6 = 6;
	float 	  l7 = 7;
	double	  l8 = 8;


	printf("Char       :   %c\n", q1);
	printf("Short      :   %d\n", q2);
	printf("Int        :   %d\n", q3);
	printf("Long       :   %ld\n",q4);
	printf("Signed     :   %d\n", q5);
	printf("Unsigned   :   %d\n", q6);
	printf("Float      :   %f\n", q7);
	printf("Double     :   %lf\n", q8);


	printf("Char       :   %c\n", l1);
	printf("Short      :   %d\n", l2);
	printf("Int        :   %d\n", l3);
	printf("Long       :   %ld\n",l4);
	printf("Signed     :   %d\n", l5);
	printf("Unsigned   :   %d\n", l6);
	printf("Float      :   %f\n", l7);
	printf("Double     :   %lf\n", l8);

}


#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float   r[10];                           
	float   l[10];
	float   m[10];
	int     a;
	int     i;
	for (i=0 ; i<10 ; i++)
	{
		a=i+1;                       
		r[i] = a;
		l[i] = 3.141592 * r[i] * r[i];
		m[i] = 3.141592 * 2 * r[i];
	}
	for (i=0 ; i<10 ; i++)
	{
		printf ("area = %g \n",l[i]);
		printf ("circumference   = %g \n",m[i]);
	}
	exit (0);
}

#include <stdio.h>
#include <math.h>

#include <stdlib.h>
typedef struct data{
	double a;
	double b;
	double c;
}str2[100];
int main()
{
	int  i,n;
	double j=1.0;
	struct data *p;
	n=sizeof(struct data)*100;
	p=malloc(n);
	for(i=0;i<100;i++,j++)
	{
		(p+i)->a=j;
		(p+i)->b=j+1.0;
		(p+i)->c=j+2.0;
	}
	for(i=0;i<10;i++)
	{
		(p+i)->a=(p+i)->b*(p+i)->c;
	}
	for(i=0;i<10;i++)
	{
		printf("*** p->a = %g *** \n",(p+i)->a);
	}
	free(p);
	exit (0);
}

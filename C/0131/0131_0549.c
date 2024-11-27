#include <stdio.h>
#include <math.h>

#include <stdlib.h>
typedef struct data{
	double a[10];
	double b[10];
	double c;
}str1;
int main()
{
	int  i,x;
	double j=1.0;
	struct data *p;
	p=malloc(sizeof(struct data));
	for(i=0;i<10;i++)
	{
		p->a[i]=j;
		p->b[i]=j+1.0;
	}
	p->c=j+2.0;
	for(i=0;i<10;i++)
	{
		p->a[i]=p->b[i]+p->c;
	}
	for(i=0;i<10;i++)
	{
		printf("*** p->a[%d]=%g *** \n",i,p->a[i]);
	}
	free(p);
	exit (0);
}

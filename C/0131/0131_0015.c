#include <stdlib.h>
#include <stdio.h>
#include <math.h>



typedef struct test1{
	long int count1[20];
	union{
		double a1[20];
		double b1[20];
		double c1;
	}uni1;
}str1;
typedef struct test2{
	long int count2;
	union{
		double a2;
		double b2;
		double c2;
	}uni2;
}str2[20];
int sub2 (struct test1 *o, struct test2 *p);
int sub1(str1 o, str2 p);
int main (void)
{
	long int i,j,k;
	str1    x;
	str2    y;
	for(i=0;i<20;i++)
	{
		x.count1[i]=i;
		x.uni1.a1[i]=(float)(i);
		x.uni1.b1[i]=2.;
		y[i].count2=i+1;
		y[i].uni2.a2=0.;
		y[i].uni2.b2=1.;
		y[i].uni2.c2=(float)(20-i);
	}
	x.uni1.c1=(float)(i*2);
	printf(" main result-1 \n");
	for(i=0;i<20;i++)
	{
		printf("count1=%ld ",x.count1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("a1 =%lg ",x.uni1.a1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("a2 =%lg ",y[i].uni2.a2);
	}
	printf("\n");
	sub1(x,y);
	sub2(&x,&y);
	
	exit (0);
}
int sub1(str1 o, str2 p)
{
	long int i;
	for(i=0;i<20;i++)
	{
		o.uni1.a1[i]=o.uni1.b1[i]+o.uni1.c1;
	}
	for(i=0;i<20;i++)
	{
		p[i].count2+=1;
		p[i].uni2.a2=p[i].uni2.b2+p[i].uni2.c2;
	}
	printf(" ** sub1 result **\n");
	for(i=0;i<20;i++)
	{
		printf("o =%lg ",o.uni1.a1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("p =%lg ",p[i].uni2.a2);
	}
	printf("\n");
}
int sub2 (struct test1 *o, struct test2 *p)
{
	long int i,n;
	for(i=0;i<20;i++)
	{
		o->uni1.a1[i]=o->uni1.b1[i]+o->uni1.c1;
	}
	for(i=2;i<20;i++)
	{
		n=i-1;
		(p+n)->count2+=1;
		(p+n)->uni2.a2=(p+n)->uni2.b2+(p+n)->uni2.c2;
	}
	printf(" ** sub2 result **\n");
	for(i=0;i<20;i++)
	{
		printf("o =%lg ",o->uni1.a1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("p =%lg ",p->uni2.a2);
		p++;
	}
	printf("\n");
}

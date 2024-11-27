#include <stdlib.h>
#include <stdio.h>
#include <math.h>



typedef struct test1{
	long int count1[20];
	double a1[20];
	double b1[20];
	double c1;
}str1;
typedef struct test2{
	long int count2;
	double a2;
	double b2;
	double c2;
}str2[20];
int sub1 (struct test1 o, struct test2 p[]);
int sub2 (struct test1 *o, struct test2 *p);
int sub3 (struct test1 *q, struct test2 *r);
int main (void)
{
	long int i,j,k;
	struct test1 x;
	struct test2 y[20];
	for(i=0;i<20;i++)
	{
		x.count1[i]=i;
		x.a1[i]=(float)(i);
		x.b1[i]=2.;
		y[i].count2=i+1;
		y[i].a2=0.;
		y[i].b2=1.;
		y[i].c2=(float)(20-i);
	}
	x.c1=(float)(i*2);
	printf(" main result-1 \n");
	for(i=0;i<20;i++)
	{
		printf("count1=%ld ",x.count1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("a1 =%lg ",x.a1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("a2 =%lg ",y[i].a2);
	}
	printf("\n");
	sub1(x,y);
	sub2(&x,&y);
	sub3(&x,&y);
	
	exit (0);
}
int sub1 (struct test1 o, struct test2 p[])
{
	long int i;
	for(i=0;i<20;i++)
	{
		o.a1[i]=o.b1[i]+o.c1;
	}
	for(i=0;i<20;i++)
	{
		p[i].count2+=1;
		p[i].a2=p[i].b2+p[i].c2;
	}
	printf(" ** sub1 result **\n");
	for(i=0;i<20;i++)
	{
		printf("o =%lg ",o.a1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("p =%lg ",p[i].a2);
	}
	printf("\n");
}
int sub2 (struct test1 *o, struct test2 *p)
{
	long int i,n;
	for(i=0;i<20;i++)
	{
		o->a1[i]=o->b1[i]+o->c1;
	}
	for(i=0;i<20;i++)
	{
		(p+i)->count2+=1;
		(p+i)->a2=(p+i)->b2+(p+i)->c2;
	}
	printf(" ** sub2 result **\n");
	for(i=0;i<20;i++)
	{
		printf("o =%lg ",o->a1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("p =%lg ",p->a2);
		p++;
	}
	printf("\n");
}
int sub3 (struct test1 *q, struct test2 *r)
{
	long int i,n;
	for(i=0;i<20;i++)
	{
		(*q).a1[i]=(*q).b1[i]+(*q).c1;
	}
	for(i=0;i<20;i++)
	{
		(*(r+i)).count2+=1;
		(*(r+i)).a2=(*(r+i)).b2+(*(r+i)).c2;
	}
	printf(" ** sub3 result **\n");
	for(i=0;i<20;i++)
	{
		printf("q =%lg ",(*q).a1[i]);
	}
	printf("\n");
	for(i=0;i<20;i++)
	{
		printf("r =%lg ",(*r).a2);
		r++;
	}
	printf("\n");
}

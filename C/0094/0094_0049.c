#include <string.h>
#include  <stdio.h>

typedef struct s1{
	double	a;
	float	b;
	union	u1{
		double	a;
		short	b;
		}c;
	char	d[5];
	struct	s2{
		union u2{
			float	a;
			short	b;
			struct	s3{
				short	a;
				union u3{
					short	a;
					long	b;
					}b;
				char c[10];
				}c;
			}a;
		short b;
		}e[2];
		unsigned int	f;
		long	g;
	}CP;

static CP	s1;
int co_cmp2(CP *sp);
int cmp2(CP ss);
int cmp1(CP ss);
int main()
{
	s1.a=1.0;
	s1.b=2.0;
	s1.c.a=3.0;
	s1.c.b=4;
	strcpy(s1.d,"five5");
	s1.e[0].a.a=6.0;
	s1.e[0].a.b=7;
	s1.e[0].a.c.a=8;
	s1.e[0].a.c.b.a=9;
	s1.e[0].a.c.b.b=10;
	strcpy(s1.e[0].a.c.c,"test test ");
	s1.e[0].b=11;
	s1.e[1].a.a=12.0;
	s1.e[1].a.b=13;
	s1.e[1].a.c.a=14;
	s1.e[1].a.c.b.a=15;
	s1.e[1].a.c.b.b=16;
	strcpy(s1.e[1].a.c.c,"test test ");
	s1.e[1].b=17;
	s1.f=18;
	s1.g=19;
	cmp1(s1);
	cmp2(s1);
}
int cmp1(CP ss)
{
	long test = 0;
	if(s1.c.b!=ss.c.b)test++;
	if(strcmp(s1.d,ss.d)!=0)test++;
	if(s1.e[0].a.b!=ss.e[0].a.b)test++;
	if(s1.e[0].a.c.a!=ss.e[0].a.c.a)test++;
	if(s1.e[0].a.c.b.a!=ss.e[0].a.c.b.a)test++;
	if(s1.e[0].a.c.b.b!=ss.e[0].a.c.b.b)test++;
	if(strcmp(s1.e[0].a.c.c,ss.e[0].a.c.c)!=0)test++;
	if(s1.e[0].b!=ss.e[0].b)test++;
	if(s1.e[1].a.b!=ss.e[1].a.b)test++;
	if(s1.e[1].a.c.a!=ss.e[1].a.c.a)test++;
	if(s1.e[1].a.c.b.a!=ss.e[1].a.c.b.a)test++;
	if(s1.e[1].a.c.b.b!=ss.e[1].a.c.b.b)test++;
	if(strcmp(s1.e[1].a.c.c,ss.e[1].a.c.c)!=0)test++;
	if(s1.e[1].b!=ss.e[1].b)test++;
	if(s1.f!=ss.f)test++;
	if(s1.g!=ss.g)test++;
	if(test==0)
		printf("(no.1)*** ok ***\n");
	else
		printf("(no.1)** ng ** test = %x\n",test);
	return 0;
}

int cmp2(CP ss)
{
	co_cmp2(&ss);
	return 0;
}

int co_cmp2(CP *sp)
{
	long test = 0;
	if(s1.c.b!=sp->c.b)test++;
	if(strcmp(s1.d,sp->d)!=0)test++;
	if(s1.e[0].a.b!=sp->e[0].a.b)test++;
	if(s1.e[0].a.c.a!=sp->e[0].a.c.a)test++;
	if(s1.e[0].a.c.b.a!=sp->e[0].a.c.b.a)test++;
	if(s1.e[0].a.c.b.b!=sp->e[0].a.c.b.b)test++;
	if(strcmp(s1.e[0].a.c.c,sp->e[0].a.c.c)!=0)test++;
	if(s1.e[0].b!=sp->e[0].b)test++;
	if(s1.e[1].a.b!=sp->e[1].a.b)test++;
	if(s1.e[1].a.c.a!=sp->e[1].a.c.a)test++;
	if(s1.e[1].a.c.b.a!=sp->e[1].a.c.b.a)test++;
	if(s1.e[1].a.c.b.b!=sp->e[1].a.c.b.b)test++;
	if(strcmp(s1.e[1].a.c.c,sp->e[1].a.c.c)!=0)test++;
	if(s1.e[1].b!=sp->e[1].b)test++;
	if(s1.f!=sp->f)test++;
	if(s1.g!=sp->g)test++;
	if(test==0)
		printf("(no.2)*** ok ***\n");
	else
		printf("(no.2)** ng ** test = %x\n",test);
	return 0;
}

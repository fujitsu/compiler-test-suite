#include <stdlib.h>
#include <string.h>
#include <math.h>
#include  <stdio.h>
typedef struct asd
{
	char      c1;
	short     s1;
	double    d1;
	char      c2[10];
	char      c3[20];
	long      i1;
	struct
	{
		char      c4[5];
		long      i2;
	}         st1;
	union
	{
		char      c5;
		long      i3;
		float     f1;
		double    d2;
	}         u1;
	double    d3;
}         S_TYPE;

S_TYPE    qwe;
int main()
{
	void      init(), copy(), print();
	S_TYPE    zxc;

	qwe.c1 = 'a';
	qwe.s1 = 30000;
	qwe.d1 = 3.141592;
	strcpy(qwe.c2, "123456789");
	strcpy(qwe.c3, "q.c3=asdfghjkdafoi");
	qwe.i1 = 1;
	strcpy(qwe.st1.c4, "zzzz");
	qwe.st1.i2 = 2;
	qwe.u1.f1 = 1.41421356;
	qwe.d3 = 2.2360679 * 2.2360679;

	copy(&zxc, qwe);
	print(zxc);
exit (0);
}

void      copy(q, p)
S_TYPE   *q, p;
{
	q->c1 = p.c1;
	q->s1 = p.s1;
	q->d1 = p.d1;
	strcpy(q->c2, p.c2);
	strcpy(q->c3, p.c3);
	q->i1 = p.i1;
	strcpy(q->st1.c4, p.st1.c4);
	q->st1.i2 = p.st1.i2;
	q->u1.d2 = p.u1.f1;
	q->d3 = p.d3;
}

void      print(p)
S_TYPE    p;
{
	float k = 1.41421356;

	if (p.c1 == 'a')
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.c1 = %c\n", p.c1);
	}
	if (p.s1 == 30000)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.s1 = %d\n", p.s1);
	}
	if (p.d1 == 3.141592)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.d1 = %lf\n", p.d1);
	}
	if (strcmp(p.c2,"123456789")==0)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.c2 = %s\n", p.c2);
	}
	if (strcmp(p.c3, "q.c3=asdfghjkdafoi")==0)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.c3 = %s\n", p.c3);
	}
	if (p.i1 == 1)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.i1 = %d\n", p.i1);
	}
	if (strcmp(p.st1.c4, "zzzz")==0)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.st1.c4(zzzz) = %s\n", p.st1.c4);
	}
	if (p.st1.i2 == 2)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.st1.i2(2) = %d\n", p.st1.i2);
	}
	if (p.u1.d2 == k)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.u1.d2(1.41421356) = %lf\n", p.u1.d2);
	}
	if (p.d3 == 2.2360679 * 2.2360679)
		printf("ok\n");
	else
	{
		printf("ng\n");
		printf("p.d3(5.0) = %lf\n", p.d3);
	}
}

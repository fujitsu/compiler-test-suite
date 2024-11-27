#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int arg_3_sub1 (char a, char b, short c, short d, int e, int f, char g, int h, short i, char j);
int arg_2_sub3 (char *a, char *b, char *c, char *d, char *e, char *f, char *g, char *h, char *i, char *j, float ff, char *k, char *l, char *m);
int arg_2_sub2 (char *a, char *b, char *c, char *d, float ff, char *e, char *f, char *g, char *h, char *i, char *j, char *k, char *l, char *m);
int arg_2_sub1 (char *a, char *b, char *c, char *d, char *e, char *f, char *g, char *h, char *i, char *j, char *k, char *l, char *m);
int arg_4 (void);
int arg_3 (void);
int arg_2 (void);
int larg2 (int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10);
int larg1 (int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10);
int larg (void);
int cnt (int *i);

#ifndef sparc
int arg_3_sub2(char,char,short,short,int,int,char,int,short,char);
#else
int arg_3_sub2(char a, char b, short c, short d, int e, int f, char g, int h, short i, char j);
#endif
int main (void)
{
	void    array(), bxd1(), bxd2(), exd2();

	array();		
	bxd1();			
	bxd2();			
	exd2();			
	larg();			
	arg_2();
	arg_3();
	arg_4();
exit (0);
}
void array (void)
{
	struct tag {
		int     a;
	};
	static struct tag st1[3] = {1, 2, 3};
	static struct tag st2[3] = {3, 2, 1};
	int     i;

	for (i = 0; i < 3; i++) {
		st2[i] = st1[i];
		if (st2[i].a != i + 1) {
			printf("ary ng\n");
			return;
		}
	}
	printf("ary ok\n");
}

void bxd1 (void)
{
	char   *stp, str[5];
	static char cpy[] = "abcd";
	int     i;

	stp = str;
	for (i = 0; i < 5; i++)
		*(stp + i) = *(cpy + i);
	if (strcmp(cpy, str)) {
		printf("bxd1 ng\n");
		return;
	}
	printf("bx1 ok\n");
}

struct base {
	int     c[5];
};
struct tag1 {
	int     b[5];
	struct base *p;
};

struct base st0 = {1, 2, 3, 4, 5};
struct tag1 st1;

void bxd2 (void)
{
	int     i;

	st1.p = &st0;
	for (i = 0; i < 5; i++)
		st1.b[i] = st1.p->c[i];
	for (i = 0; i < 5; i++)
		if (st1.b[i] != i + 1) {
			printf("bxd2 ng\n");
			return;
		}
	printf("bx2 ok\n");
}

void exd2 (void)
{
	struct tag {
		long int t[3];
	};

	struct tag t2, *tp;
	long int i;
	int     a, b, c, d, ary[2][10];

	for (i = 0; i < 3; i++) {
		t2.t[i] = (i + 1) * 4;
	}
	tp = &t2;
	for (i = 0; i < 3; i++) {
		if (tp->t[i] != (i + 1) * 4) {
			printf("ex2 ng\n");
			return;
		}
	}
	cnt(&a);
	cnt(&b);
	cnt(&c);
	cnt(&d);
	for (i = 0; i < 2; i++) {
		ary[i][a] = d;
		ary[i][b] = d;
		ary[i][c] = d;
	}
	for (i = 0; i < 2; i++) {
		if (ary[i][a] != d) {
			printf("ex2 ng\n");
			return;
		}
	}
	printf("ex2 ok\n");
}

int cnt (int *i)
{
	*i = 4;
}

int larg (void)
{
        larg1(1,2,3,4,5,6,7,8,9,10);
}

int larg1 (int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
        larg2(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10);
}

int larg2 (int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
	if(a1==1 && a2==2 && a3==3 && a4==4 && a5==5
	&& a6==6 && a7==7 && a8==8 && a9==9 && a10==10)
		printf("lot ok\n");
	else
		printf("lot ng\n");
        return 0;
}

int arg_2 (void)
{
	arg_2_sub1("ab","cd","ef","gh","ij","kl",
			"mn","op","qr","st","uv","wx","yz");
}

int arg_2_sub1 (char *a, char *b, char *c, char *d, char *e, char *f, char *g, char *h, char *i, char *j, char *k, char *l, char *m)
{
	float ff=4.0;
	if(!strcmp(a,"ab") && !strcmp(b,"cd") && !strcmp(c,"ef")
	&& !strcmp(d,"gh") && !strcmp(e,"ij") && !strcmp(f,"kl")
	&& !strcmp(g,"mn") && !strcmp(h,"op") && !strcmp(i,"qr")
	&& !strcmp(j,"st") && !strcmp(k,"uv") && !strcmp(l,"wx")
	&& !strcmp(m,"yz"))
		printf("a21 ok\n");
	else
		printf("a21 ng\n");
	arg_2_sub2(a,b,c,d,ff,e,f,g,h,i,j,k,l,m);
}

int arg_2_sub2 (char *a, char *b, char *c, char *d, float ff, char *e, char *f, char *g, char *h, char *i, char *j, char *k, char *l, char *m)
{
	if(!strcmp(a,"ab") && !strcmp(b,"cd") && !strcmp(c,"ef")
        && !strcmp(d,"gh") && !strcmp(e,"ij") && !strcmp(f,"kl")
        && !strcmp(g,"mn") && !strcmp(h,"op") && !strcmp(i,"qr")
        && !strcmp(j,"st") && !strcmp(k,"uv") && !strcmp(l,"wx")
        && !strcmp(m,"yz")
	&& ff==4.0)
                printf("a22 ok\n");
	arg_2_sub3(a,b,c,d,e,f,g,h,i,j,ff,k,l,m);
}

int arg_2_sub3 (char *a, char *b, char *c, char *d, char *e, char *f, char *g, char *h, char *i, char *j, float ff, char *k, char *l, char *m)
{
	if(!strcmp(a,"ab") && !strcmp(b,"cd") && !strcmp(c,"ef")
        && !strcmp(d,"gh") && !strcmp(e,"ij") && !strcmp(f,"kl")
        && !strcmp(g,"mn") && !strcmp(h,"op") && !strcmp(i,"qr")
        && !strcmp(j,"st") && !strcmp(k,"uv") && !strcmp(l,"wx")
        && !strcmp(m,"yz") 
        && ff==4.0) 
                printf("a23 ok\n");
	else
                printf("a23 ng\n");
}

int arg_3 (void)
{
char a=1; char b=2; short c=3; short d=4; int e=5;
int f=6; char g=7; int h=8; short i=9; char j=10;
	arg_3_sub1(a,b,c,d,e,f,g,h,i,j);
}


int arg_3_sub1 (char a, char b, short c, short d, int e, int f, char g, int h, short i, char j)
{
	if(a==1 && b==2 && c==3 && d==4 && e==5
	&& f==6 && g==7 && h==8 && i==9 && j==10)
		printf("a31 ok\n");
	else
		printf("a31 ng\n");
	arg_3_sub2(a,b,c,d,e,f,g,h,i,j);
}

#ifndef sparc
int arg_3_sub2(char a,char b,short c,short d,int e,int f,
				char g,int h,short i,char j)
#else
arg_3_sub2(a,b,c,d,e,f,g,h,i,j)
char a; char b; short c; short d; int e;
int f; char g; int h; short i; char j;
#endif
{
	if(a==1 && b==2 && c==3 && d==4 && e==5
	&& f==6 && g==7 && h==8 && i==9 && j==10)
		printf("a32 ok\n");
	else
		printf("a32 ng\n");
}

typedef struct{char c;}SMC;
typedef struct{short s;}SMS;
int arg_4_sub (char a, char b, char c, char d, char e, char f, char g, char h, SMC cc, SMS ss);

int arg_4 (void)
{
	char a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=8;
	SMC	cc;
	SMS	ss;
	cc.c=11;
	ss.s=22;
	arg_4_sub(a,b,c,d,e,f,g,h,cc,ss);
}

int arg_4_sub (char a, char b, char c, char d, char e, char f, char g, char h, SMC cc, SMS ss)
{
	if(a==1 && b==2 && c==3 && d==4 && e==5 && f==6 && g==7 && h==8
		&& cc.c==11 && ss.s==22)	printf("a41 ok\n");
	else
		printf("a41 ng\n");
}

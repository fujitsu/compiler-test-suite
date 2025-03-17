#include <string.h>
#include <stdio.h>
int cc2();
int cc1();
int iret(int i);
int tmpr(int i);
int fpd(int *i);
int fpb(int *i);
int sarg2(int i1, short s, int i2, char c, float f);
int r4();
int r3();
int r2();
int r1();
int f0();
int f1();

int main()
{
	void    bit(), strret(), asmt(), arg(), nott(), opr(), tmp(), voided(), cmp(), elm();

	bit();
	strret();
	asmt();
	arg();
	nott();
	opr();
	tmp();
	voided();
	cmp();
	elm();
}
void
bit()
{
	struct bb {
		unsigned is_a:1;
		unsigned is_b:1;
		unsigned is_c:1;
		unsigned is_d:1;
	}       bitt;
	long    a, b;

	bitt.is_a = f1();
	bitt.is_b = f0();
	a = bitt.is_a;
	b = bitt.is_b;
	if (!bitt.is_a) {
		printf("bit 1 ng\n");
		return;
	}
	if (bitt.is_b) {
		printf("bit 2 ng\n");
		return;
	}
	if (!a || b) {
		printf("bit 3 ng\n");
		return;
	}
	bitt.is_c = bitt.is_d = bitt.is_a;
	if (bitt.is_a != bitt.is_c || bitt.is_a != bitt.is_d)
		printf("bit 3 ng\n");
	printf("bit ok\n");
}

int f1()
{
	return 1;
}

int f0()
{
	return 0;
}

typedef struct ret {
	long    a;
	char    b;
	float   c;
}       ST;

void
strret()
{
	ST      strt0, strt1, strfunc(), an, argnon(), *sp;
	float   a;

	strt0.a = 12345678;
	strt0.b = 'c';
	a = strt0.c = 123456.123e-3;
	sp =& strt0;
	strt1 = strfunc(strt0, sp->a);
	if (strt1.a != 12345678) {
		printf("ret 1 ng\n");
		return;
	}
	if (strt1.b != 'c') {
		printf("ret 2 ng\n");
		return;
	}
	if (strt1.c != a) {
		printf("ret 3 ng\n");
		return;
	}
	an = argnon();
	if (an.a != 12345678) {
		printf("ret 1 ng\n");
		return;
	}
	if (an.b != 'c') {
		printf("ret 2 ng\n");
		return;
	}
	if (an.c != a) {
		printf("ret 3 ng\n");
		return;
	}
	printf("ret ok\n");
}

ST
strfunc(a, b)
	ST      a;
	long    b;
{
	if (b != 12345678)
		printf("ret 4 ng\n");
	return a;
}

ST
argnon()
{
	ST      ret;

	ret.a = 12345678;
	ret.b = 'c';
	ret.c = 123456.123e-3;
	return (ret);
}

void
asmt()
{
	int     s, i, j, k, l;
	char    b[10], a;

	s = 5;
	k = 1;
	l = k + 1;

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
	i = s + l;
	j = s + k - 2 + 2;
#else
	asm("        add     {s},{l},%gr24");
	asm("        add     %gr24,%gr0,[i]");
	asm("        add     {s},{k},%gr23");
	asm("        subi5   %gr23,2,%gr23");
	asm("        addi5   %gr23,2,%gr23");
	asm("        add     %gr0,%gr23,[j]");
#endif
	if (i != s + l) {
		printf("asm 1 ng\n");
		return;
	}
	if (j != k + s) {
		printf("asm 2 ng\n");
		return;
	}
	strcpy(b, "abcdefghi");

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
        a = *((char *)b + 3);
#else
	asm("        add     {b},%gr0,%gr23");
	asm("        ld.c    %gr23,3,[a]");
#endif
	if (a != 'd') {
		printf("asm 3 ng\n");
		return;
	}

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
        s = s + 2;
#else
	asm("        addi5   {s},2,%gr24");
	asm("        addi5   %gr24,0,[s]");
#endif

	if (s != 7) {
		printf("asm 4 ng\n");
		return;
	}

	printf("asm ok\n");
}


void
arg()
{
	int     i1, i2, res1, res2;
	char    ca;
	short   sa;
	float   fa, r5();

#ifdef __STDC__
	int     sarg1(int, short, int, char, float);

#else
	int     sarg1();

#endif

	i1 = r1();
	i2 = r2();
	ca = r3();
	sa = r4();
	fa = r5();
	res1 = sarg1(i1, sa, i2, ca, fa);
	res2 = sarg2(i1, sa, i2, ca, fa);
	if (res1 == r1() + r2() + r3() + r4() + (int) r5()
	    && res2 == r1() + r2() + r3() + r4() + (int) r5())
		printf("arg ok\n");
	else
		printf("arg res ng\n");
}

#ifdef __STDC__
int
sarg1(int i1, short s, int i2, char c, float f)
#else
sarg1(i1, s, i2, c, f)
	int     i1, i2;
	short   s;
	char    c;
	float   f;

#endif
{
	float   r5();

	if (i1 != 1) {
		printf("arg 1 ng\n");
		return 0;
	}
	if (i2 != 2) {
		printf("arg 2 ng\n");
		return 0;
	}
	if (c != 3) {
		printf("arg 3 ng\n");
		return 0;
	}
	if (s != 4) {
		printf("arg 4 ng\n");
		return 0;
	}
	if (f != r5()) {
		printf("arg 5 ng\n");
		printf("%f %f\n", f, r5());
		return 0;
	}
	return i1 + i2 + c + s + (int) f;
}

int sarg2(i1, s, i2, c, f)
	int     i1, i2;
	short   s;
	char    c;
	float   f;
{
	float   r5();

	if (i1 != 1) {
		printf("arg 6 ng\n");
		return 0;
	}
	if (i2 != 2) {
		printf("arg 7 ng\n");
		return 0;
	}
	if (c != 3) {
		printf("arg 8 ng\n");
		return 0;
	}
	if (s != 4) {
		printf("arg 9 ng\n");
		return 0;
	}
	if (f != r5()) {
		printf("arg 10 ng\n");
		printf("%f %f\n", f, r5());
		return 0;
	}
	return i1 + i2 + c + s + (int) f;
}

int r1()
{
	return 1;
}

int r2()
{
	return 2;
}

int r3()
{
	return 3;
}

int r4()
{
	return 4;
}
float
r5()
{
	return 8.0;
}

void
nott()
{
	int     a, b, dsp, size;

	fpb(&b);
	fpd(&size);
	dsp = (size + b - 1) & ~(b - 1);
	if (dsp != 80) {
		printf("not ng\n");
		return;
	}
	a = ~b;
	if (a & b)
		printf("not ng\n");
	printf("not ok\n");
}

int fpb(i)
	int    *i;
{
	*i = 8;
}

int fpd(i)
	int    *i;
{
	*i = 78;
}

void
opr()
{
	int     a, b, c, d;
	unsigned e, f, g;
	float   fa1, fa2, fa3, flt1(), flt2();

	fpb(&a);
	b = a * a * a * a;
	c = a * 23;
	d = c + c / a;
	e = a % d * c / a + c;
	f = e * a & c;
	g = e | f * e + ~a;
	a = (c % f * g) / (b % e * d);
	if (a != 265) {
		printf("opr ng\n");
		return;
	}
	fa2 = flt2();
	fa3 = flt1();
	fa1 = fa2 * fa3 / fa2;
	if (fa1 != fa3) {
		printf("float ng\n");
		return;
	}
	printf("opr ok\n");
}

float
flt1()
{
	return 3.0;
}
float
flt2()
{
	return 4.0;
}

void
tmp()
{
	int     i, j, k;

	i = f1();
	j = tmpr(i++);
	k = tmpr(++i + j++);
	if (i != 3 || j != 3 || k != 6) {
		printf("tmp 1 ng");
		return;
	}
	i = f1();
	j = tmpr(++i + i++);
	j = iret(i);
	j = tmpr(++i + i++);
	j = iret(i);
	j = tmpr(++i + i++);
	if (i != 7) {
		printf("tmp 2 ng\n");
		return;
	}
	printf("tmp ok\n");
}

int iret(i)
	int     i;
{
	return i;
}

int tmpr(i)
	int     i;
{
	return ++i;
}

void
voided()
{

#ifdef __STDC__
	void    vfnc(int);

#else
	void    vfnc();

#endif

	vfnc(3);
	printf("vid ok\n");
}
void
vfnc(a)
	int     a;
{
	if (a != 3)
		printf("vid ng\n");
}

void
cmp()
{
	int     a, b, test = 0;

	a = cc1();
	b = cc2();
	test = (a > b) * 1 +
		(a < b) * (1 << 2) +
		(a >= b) * (1 << 3) +
		(a <= b) * (1 << 4) +
		(a == b) * (1 << 5) +
		(a != b) * (1 << 6);
	if (test != (1 << 2) + (1 << 4) + (1 << 6)) {
		printf("cmp ng\n");
		return;
	}
	printf("cmp ok\n");
}

int cc1()
{
	return 234;
}

int cc2()
{
	return 9999;
}

typedef union uni {
	float   dum;
	int     a;
	short   b;
}       UUT;
typedef struct st {
	float   dum;
	int     a;
	short   b;
	UUT     u;
}       SST;

void 
elm()
{
	SST     st, strelm(), sret;

	st.u.a = 234;
	sret = strelm(st.u);
	if (sret.a != 456) {
		printf("elm 1 ng\n");
		return;
	}
	if (sret.b != 678) {
		printf("elm 2 ng\n");
		return;
	}
	if (sret.u.a != 234) {
		printf("elm 3 ng\n");
		return;
	}
	printf("elm ok\n");
}

SST 
strelm(s)
	UUT     s;
{
	SST     st;

	if (s.a != 234)
		printf("elm 4 ng\n");
	st.u = s;
	st.a = 456;
	st.b = 678;
	return st;
}

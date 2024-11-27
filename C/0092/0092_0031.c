

#include <stdio.h>
int fifth(int b1, int b2, int b3, int b4, int b5, int b6, int b7, int b8,
	  int b9, int b10, int b11, int b12, int b13, int b14, int b15, int b16);
int fi7(int *i);
int fi2(int *i);
int fi1(int *i);
int f3(int *i);
int f2(int *i);
int f1(int *i);
int sub10(void);
int sub9(int x, int y, unsigned b, unsigned c);
int sub7(void);
int sub6(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8,
	 char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16);
int sub5(int k);
int sub4_set();
int sub4(void);
int sub1(void);
int c_move2(void);
int c_move1(void);
int sub_gen4(void);
int sub_gen3(void);
int sub_gen2(void);
int sub_gen1(void);
int main()
{
	unsigned i;

	for (i = 0; i <= 3; i++) {
		printf("print %c: ", 'a' + i);
		sub1();
	}
	sub_gen1();
	sub_gen2();
	sub_gen3();
	sub_gen4();
	c_move1();
	c_move2();
	sub4_set();
	sub4();
	printf("sub5 is return 1 =%d\n", sub5(1));
	if (sub6(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
	    == 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12 + 13 + 14 + 15 + 16)
		printf("sub6 ok\n");
	sub7();
	sub9(0x10, 0x10, 0x10, 0x10);
	sub10();
}

int sub1()
{
	static   int i;

	switch (++i) {
	    case 1:
		printf("a\n");
		break;
	    case 2:
		printf("b\n");
		break;
	    case 3:
		printf("c\n");
		break;
	    case 4:
		printf("d\n");
		break;		
	    default:
		printf("error\n");
	}
	return 0;
}

int sub_gen1()
{
	struct aaa {
		int     a;
		int     b[10];
	}       sst, *ssp;
	int     i;

	ssp = &sst;
	fi7(&i);
	f1(&(sst.a));
	f2(&(sst.b[i]));	
	f3(&(sst.b[5]));	
	if (ssp->a != 1) {
		printf("ng1\n");
		return 0;
	}
	if (ssp->b[i] != 2) {
		printf("ng2\n");
		return 0;
	}
	if (ssp->b[5] != 3) {
		printf("ng3\n");
		return 0;
	}
	printf("ok\n");
	return 0;
}

 int sub_gen2()
{
	struct aaa {
		int     a;
		int     b[10];
	}       sst, *ssp;
	int     i;

	ssp = &sst;
	fi7(&i);
	f1(&(ssp->a));		
	f2(&(ssp->b[i]));	
	f3(&(ssp->b[5]));	
	if (sst.a != 1) {
		printf("ng4\n");
		return 0;
	}
	if (sst.b[i] != 2) {
		printf("ng5\n");
		return 0;
	}
	if (sst.b[5] != 3) {
		printf("ng6\n");
		return 0;
	}
	printf("ok\n");
	return 0;
}

 int sub_gen3()
{
	struct aaa {
		int     a;
		int     b[10];
	}       sst[5], *ssp[5];
	int     i, j, k;

	fi7(&i);
	fi1(&j);
	fi2(&k);
	ssp[2] = &sst[j];
	ssp[k] = &sst[3];
	f1(&(sst[3].a));	
	f2(&(sst[3].b[i]));	
	f3(&(sst[3].b[5]));	
	f1(&(sst[j].a));	
	f2(&(sst[j].b[i]));	
	f3(&(sst[j].b[5]));	
	if (ssp[2]->a != 1) {
		printf("ng7\n");
		return 0;
	}
	if (ssp[2]->b[i] != 2) {
		printf("ng8\n");
		return 0;
	}
	if (ssp[2]->b[5] != 3) {
		printf("ng9\n");
		return 0;
	}
	if (ssp[k]->a != 1) {
		printf("ng10\n");
		return 0;
	}
	if (ssp[k]->b[i] != 2) {
		printf("ng11\n");
		return 0;
	}
	if (ssp[k]->b[5] != 3) {
		printf("ng12\n");
		return 0;
	}
	printf("ok\n");
	return 0;
}

 int sub_gen4()
{
	struct aaa {
		int     a;
		int     b[10];
	}       sst[5], *ssp[5];
	int     i, j, k;

	fi7(&i);
	fi1(&j);
	fi2(&k);
	ssp[2] = &sst[k];	
	ssp[j] = &sst[3];	
	f1(&ssp[2]->a);		
	f2(&ssp[2]->b[i]);	
	f3(&ssp[2]->b[5]);	
	f1(&ssp[j]->a);		
	f2(&ssp[j]->b[i]);	
	f3(&ssp[j]->b[5]);	
	if (sst[k].a != 1) {
		printf("ng13\n");
		return 0;
	}
	if (sst[k].b[i] != 2) {
		printf("ng14\n");
		return 0;
	}
	if (sst[k].b[5] != 3) {
		printf("ng15\n");
		return 0;
	}
	if (sst[3].a != 1) {
		printf("ng16\n");
		return 0;
	}
	if (sst[3].b[i] != 2) {
		printf("ng17\n");
		return 0;
	}
	if (sst[3].b[5] != 3) {
		printf("ng18\n");
		return 0;
	}
	printf("ok\n");
	return 0;
}

int fi1(i)
	int    *i;
{
  *i = 1;
  return 0;
}

int fi2(i)
	int    *i;
{
  *i = 2;
  return 0;
}

int fi7(i)
	int    *i;
{
  *i = 7;
  return 0;
}

int f1(i)
	int    *i;
{
  *i = 1;
  return 0;
}

int f2(i)
	int    *i;
{
  *i = 2;
  return 0;
}

int f3(i)
	int    *i;
{
  *i = 3;
  return 0;
}

typedef struct c_m {
	int     a;
	char    b[10];
	union uni {
		int     ui;
		int     uc;
	}       k;
	int     c;
}       C_M;

 int c_move1()
{
	C_M     str1, str2;

	f1(&(str1.k.ui));
	f2(&(str1.k.uc));
	f3(&(str1.c));
	str2 = str1;
	if (str2.k.ui != 2) {
		printf("ng19\n");
		return 0;
	}
	if (str2.k.uc != 2) {
		printf("ng20\n");
		return 0;
	}
	if (str2.c != 3) {
		printf("ng21\n");
		return 0;
	}
	printf("ok\n");
	return 0;
}

struct ex {
	int     a;
	union exu {
		int     ui;
		int     us;
	}       u;
	int     b;
}       str1, str2;

 int c_move2()
{
	f1(&(str1.u.ui));
	f2(&(str1.u.us));
	f3(&(str1.b));
	str2 = str1;
	if (str2.u.ui != 2) {
		printf("ng22\n");
		return 0;
	}
	if (str2.u.us != 2) {
		printf("ng23\n");
		return 0;
	}
	if (str2.b != 3) {
		printf("ng24\n");
		return 0;
	}
	printf("ok\n");
	return 0;
}

int     extint;

 int sub4_set()
{
	f2(&extint);
	return 0;
}

 int sub4()
{
	int    *intp, lclint;

	intp = &extint;
	lclint = *intp;
	if (lclint == extint)
		printf("ok\n");
	else
		printf("ng25\n");
	return 0;
}

 int sub5(k)
	int     k;
{
	if (k)
		return 1;	
	return 0;
}

 int sub6(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16)
	char    a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16;


{
	
	return (fifth(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16));
}

 int fifth(b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16)
	int     b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16;
{
	return (b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10 + b11 + b12 + b13 + b14 + b15 + b16);
}

 int sub7()
{
	int     i;
	void    fp1(), fp2(), fp3();
	static void (*sub4[]) () = {fp1, fp2, fp3};

	for (i = 0; i < 3; i++)
		sub4[i] ();
	return 0;
}

void
fp1()
{
	printf("call f1\n");
}
void
fp2()
{
	printf("call f2\n");
}
void
fp3()
{
	printf("call f3\n");
}

int sub9(x, y, b, c)
	int     x, y;
	unsigned b, c;
{
	unsigned a;

	a = b >> 2;
	if (a != 0x4) {		
		printf("ng26\n");
		return 0;
	}
	a = b << 2;
	if (a != 0x40) {	
		printf("ng27\n");
		return 0;
	}
	a = x >> 2;
	if (a != 0x4) {
		printf("ng28\n");
		return 0;
	}
	a = x << 2;
	if (a != 0x40) {
		printf("ng29\n");
		return 0;
	}
	x = y >> 2;
	if (a != 0x40) {
		printf("ng30 \n");
		return 0;
	}
	x = y << 2;
	if (a != 0x40) {
		printf("ng31\n");
		return 0;
	}
	x = c >> 2;
	if (a != 0x40) {	
		printf("ng32\n");
		return 0;
	}
	x = c << 2;
	if (a != 0x40) {	
		printf("ng33\n");
		return 0;
	}
	printf("ok\n");
	return 0;
}

 int sub10()
{
	char    ccc = -1;	
	short int sic = -2;	
	int     iic = -3;	
	long int lic = -4;	
	unsigned char ucc = -5;	
	unsigned short usc = -6;
	unsigned int uic = -7;	
	unsigned long ulc = -8;	

	if (ccc != -1) {
		printf("ng34\n");
		return 0;
	}
	if (sic != -2) {
		printf("ng35\n");
		return 0;
	}
	if (iic != -3) {
		printf("ng36\n");
		return 0;
	}
	if (lic != -4) {
		printf("ng37\n");
		return 0;
	}
	if (ucc != 251) {
		printf("ng38\n");
		return 0;
	}
	if (usc != 65530) {
		printf("ng39\n");
		return 0;
	}
	if (uic != -7) {
		printf("ng40\n");
		return 0;
	}
	if (ulc != -8) {
		printf("ng41\n");
		return 0;
	}
	printf("ok\n");
	return 0;
}

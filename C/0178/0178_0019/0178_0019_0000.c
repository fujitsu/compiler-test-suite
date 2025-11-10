#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <complex.h>
#include"004.h"

extern long longvar __attribute__((mode(HI), weak));
extern unsigned char  __attribute__((mode(DI), weak)) char_var;
extern unsigned long  ulVar __attribute__((mode(QI), weak));
extern double __attribute__((mode(SF), weak)) DVAR;
extern char charvar __attribute__((mode(byte), weak));
extern unsigned long long int __attribute__((mode(word))) llivar027;
extern int INTVAR __attribute__((mode(__pointer__), weak));
extern long long int __attribute__((mode(__byte__), weak)) lli030 ;

void test001(){
	longvar = 256;
	fchck(1, 256, longvar, 0.0, "mode No.1 NG1\n");
	ichck(1, 2, sizeof(longvar), "mode No.1 NG2\n");
}

void test002(){
	typedef signed char sctype  __attribute__ ((mode (DI)));
	lichck(2, sizeof(sctype), sizeof(long), "mode No.2 NG1\n");
	sctype __attribute__((unused, mode(pointer))) char002;
	ichck(2, sizeof(char*), sizeof(char002), "mode No.2 NG2\n");
}

void test003(){
	unsigned int intVar __attribute__((mode(__word__)));
	intVar = 256;
	ichck(3, 256, intVar, "mode No.3 NG1\n");
	ichck(3, 8, sizeof(intVar), "mode No.3 NG2\n");
}

void test004(){
	unsigned short __attribute__((mode(__byte__))) SHORTVAR;
	SHORTVAR = 256;
	ichck(4, 0, SHORTVAR, "mode No.4 NG1\n");
	SHORTVAR = 255;
	ichck(4, 255, SHORTVAR, "mode No.4 NG2\n");
	ichck(4, 1, sizeof(SHORTVAR), "mode No.4 NG3\n");
}

void test005(){
	char_var = 256;
	lichck(5, 256, char_var, "mode No.5 NG1\n");
	ichck(5, 8, sizeof(char_var), "mode No.5 NG2\n");
}

void test006(){
	typedef float ftype  __attribute__ ((mode (SF)));
	ichck(6, sizeof(float), sizeof(ftype), "mode No.6 NG1\n");
	ftype __attribute__((mode(DF))) f_006;
	ichck(6, sizeof(double), sizeof(f_006), "mode No.6 NG2\n");
}

void test007(){
	typedef int itype  __attribute__ ((mode (DI)));
	ichck(7, 8, sizeof(itype), "mode No.7 NG1\n");
	itype __attribute__((mode(SI))) f_007;
	ichck(7, 4, sizeof(f_007), "mode No.7 NG2\n");
}

void test008(){
	typedef short stype  __attribute__ ((mode (DI)));
	ichck(8, 8, sizeof(stype), "mode No.8 NG1\n");
	stype __attribute__((mode(QI))) f_008;
	ichck(8, 1, sizeof(f_008), "mode No.8 NG2\n");
}

void test009(){
	int test009;
	static typeof(test009) __attribute__((mode(__word__))) intVaR ;
	intVaR = 256;
	ichck(9, 256, intVaR, "mode No.9 NG1\n");
	ichck(9, 8, sizeof(intVaR), "mode No.9 NG2\n");
}

void test010(){
	long test010;
	typeof(test010) var010 __attribute__((mode(QI)));
	var010 = 255;
	ichck(10, -1, var010, "mode No.10 NG1\n");
	ichck(10, 1, sizeof(var010), "mode No.10 NG2\n");
}

void test011(){
	static unsigned long __attribute__((mode(__byte__))) long_var;
	long_var = 256;
	ichck(11, 0, long_var, "mode No.11 NG1\n");
	long_var = 255;
	ichck(11, 255, long_var, "mode No.11 NG2\n");
	ichck(11, 1, sizeof(long_var), "mode No.11 NG3\n");
}

void test012(){
	typedef long long int llitype  __attribute__ ((mode (DI)));
	ichck(12, 8, sizeof(llitype), "mode No.12 NG1\n");
	llitype __attribute__((mode(__pointer__))) testVar;
	ichck(12, sizeof(char*), sizeof(testVar), "mode No.12 NG2\n");
}

void test014(){
	typedef int itype  __attribute__ ((mode (HI)));
	itype ITYPEVAR = 100;
	lichck(14, 100, ITYPEVAR, "mode No.14 NG1\n");
	ichck(14, 2, sizeof(ITYPEVAR), "mode No.14 NG2\n");
}

void test015(){
	typedef long ltype  __attribute__ ((mode (__word__)));
	ltype var015 = 100;
	lichck(15, 100, var015, "mode No.15 NG1\n");
	ichck(15, 8, sizeof(var015), "mode No.15 NG2\n");
}

void test016(){
	static long double ldvar __attribute__((mode(DF)));
	ldvar = 256.1;
	dchck(16, 256.1, ldvar, 0.0, "mode No.16 NG1\n");
	ichck(16, 8, sizeof(ldvar), "mode No.16 NG2\n");
}

void test017(){
	ulVar = 255;
	ichck(17, 255, ulVar, "mode No.17 NG1\n");
	ichck(17, 1, sizeof(ulVar), "mode No.17 NG2\n");
}

void test018(){
	DVAR = 123.45;
	fchck(18, 123.45, DVAR, 0.1, "mode No.18 NG1\n");
	ichck(18, sizeof(float), sizeof(DVAR), "mode No.18 NG2\n");
}

void test020(){
	long double __attribute__((mode(SF))) test_020;
	test_020 = 123.45;
	fchck(20, 123.45, test_020, 0.0, "mode No.20 NG1\n");
	ichck(20, 4, sizeof(test_020), "mode No.20 NG2\n");
}

void test021(){
	charvar = 255;
	ichck(21, -1, charvar, "mode No.21 NG1\n");
	ichck(21, 1, sizeof(charvar), "mode No.21 NG2\n");
}

void test026(){
	typedef double dtype  __attribute__ ((mode (DF)));
	ichck(26, 8, sizeof(dtype), "mode No.26 NG1\n");
	dtype __attribute__((mode(SF))) testVAR;
	ichck(26, 4, sizeof(testVAR), "mode No.26 NG2\n");
}

void test027(){
	llivar027 = 256;
	ichck(27, 256, llivar027, "mode No.27 NG1\n");
	ichck(27, 8, sizeof(llivar027), "mode No.27 NG2\n");
}

void test028(){
	int target = 10;
	INTVAR = (int)&target;
	ichck(28, (int)&target, INTVAR, "mode No.28 NG1\n");
	ichck(28, sizeof(int*), sizeof(INTVAR), "mode No.28 NG2\n");
}

void test029(){
	typedef enum {e1, e2} etype  __attribute__ ((mode (HI)));
	ichck(29, 2, sizeof(etype), "mode No.29 NG1\n");
	etype __attribute__((mode(DI))) testVAR;
	llichck(29, 8, sizeof(testVAR), "mode No.29 NG2\n");
}

void test030(){
	lli030 = 3;
	lichck(30, 3, lli030, "mode No.30 NG1\n");
	ichck(30, 1, sizeof(lli030), "mode No.30 NG2\n");
}

void test031(){
	static long LONGVAR __attribute__((mode(QI)));
	LONGVAR = 256;
	ichck(31, 0, LONGVAR, "mode No.31 NG1\n");
	LONGVAR = 255;
	ichck(31, -1, LONGVAR, "mode No.31 NG2\n");
	ichck(31, 1, sizeof(LONGVAR), "mode No.31 NG3\n");
}

void test037(){
	typedef int QI;
	QI testVAR;
	ichck(37, sizeof(int), sizeof(testVAR), "mode No.37 NG1\n");
}

void test038(){
	short __attribute__((mode(QI))) s_038;
	typeof(s_038) var_038;
	ichck(38, 1, sizeof(var_038), "mode No.38 NG\n");
}

void test039(){
	char variable __attribute__((mode(__word__)));
	char *pointer = &variable;
	ichck(39, 8, sizeof(variable), "mode No.39 NG\n");
}

int main() { 
	header("GNU mode","Gnu Attribute mode test");

	test001();
	test002();
	test003();
	test004();
	test005();
	test006(); 
	test007(); 
	test008(); 
	test009(); 
	test010(); 
	test011(); 
	test012(); 
	test014(); 
	test015(); 
	test016(); 
	test017(); 
	test018(); 
	test020(); 
	test021();  
	test026(); 
	test027(); 
	test028(); 
	test029(); 
	test030(); 
	test031(); 
	test037(); 
	test038(); 
	test039(); 

	header("GNU mode","Gnu Attribute mode test");

} 

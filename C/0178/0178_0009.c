#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdbool.h>
#include <complex.h>
#include"004.h"

typedef struct {
		unsigned char char_var1;
		unsigned char char_var2;
		unsigned char char_var3;
} test001_t;

typedef struct {
		unsigned char char_var1;
		struct inner2 {
			unsigned char char_var2;
			unsigned char char_var3;
			char *str;
		} inner_002;
} test002_t;

typedef struct {
		_Bool bool1;
		_Bool bool2;
		_Bool bool3;
} test003_t;

typedef struct {
		unsigned char char_var1;
		struct inner4 {
			bool bool1;
			bool bool2;
			bool bool3;
		} inner_004;
} test004_t;

typedef struct {
		unsigned char char_var1;
		struct inner5 {
			unsigned long long_var1;
			unsigned long long_var2;
			unsigned long long_var3;
		} inner_005;
} test005_t;

typedef struct {
		unsigned short short_var1;
		unsigned short short_var2;
		unsigned short short_var3;
} test006_t;

typedef struct {
		unsigned short short_var1;
		unsigned short short_var2;
		char* (*p) (char *s1, const char *s2);
} test007_t;

typedef struct {
		unsigned char char_var1;
		struct inner8 {
			unsigned char char_var2;
			unsigned char char_var3;
			long long int ll_var1;
		} inner_008;
} test008_t;

typedef struct {
		short short_var1;
		short short_var2;
		short short_var3;
} test009_t;

typedef struct {
		char *str1;
		char *str2;
		char *str3;
} test010_t;

typedef struct {
		unsigned char char_var1;
		struct inner11 {
			unsigned bit1 : 1;
			unsigned bit2 : 1;
			unsigned bit3 : 1;
			long long_var1;
		} inner_011;
} test011_t;

typedef struct {
		unsigned char char_var1;
		unsigned bit1 : 1;
		unsigned bit2 : 1;
		unsigned bit3 : 1;
		long long_var1;
} test012_t;

typedef struct {
		float _Complex comp_var1;
		double _Complex comp_var2;
		long double _Complex comp_var3;
} test013_t;

typedef struct {
		long long int lli_var1;
		long long int lli_var2;
		long long int lli_var3;
} test014_t;

typedef struct {
		unsigned char char_var1;
		struct inner15 {
			unsigned char char_var2;
			long long_var1;
			char *str;
		} inner_015;
} test015_t;

typedef struct {
		unsigned char char_var1;
		struct inner16 {
			unsigned char char_var2;
			int int_var1;
			char *str;
		} inner_016;
		int int_var2;
} test016_t;

typedef struct {
		unsigned char char_var1;
		unsigned long long int lli_var1;
		unsigned char char_var2;
		unsigned long long int lli_var2;
} test017_t;

typedef struct {
		unsigned char char_var1;
		enum test018_E { RED, BLUE, GREEN } e;
} test018_t;

typedef struct {
		unsigned long long_var1;
		unsigned long long_var2;
		unsigned long long_var3;
} test019_t;

typedef union {
		struct inner20 {
			unsigned short short_var1;
			unsigned short short_var2;
			char *str;
		} inner_020;
		struct inner20b {
			unsigned char char_var1;
			unsigned char char_var2;
			char *str2;
		} inner_020b;
} test020_t;

typedef struct {
		struct inner21 {
			unsigned short short_var1;
			unsigned short short_var2;
			char *str;
		} inner_021;
		struct inner21b {
			signed char char_var1;
			signed char char_var2;
			char *str2;
		} inner_021b;
		long long_var;
} test021_t;

typedef union {
		union inner22 {
			long double ld_var1;
			unsigned short short_var1;
			char *str;
		} inner_022;
		struct inner22b {
			signed char char_var1;
			signed char char_var2;
			char *str2;
		} inner_022b;
		long long_var;
} test022_t;

typedef struct {
		unsigned char char_var1;
		struct inner23 {
			unsigned char char_var2;
			int int_var1;
			enum test023_E { CAT, DOG, BIRD } e;
		} inner_023;
} test023_t;

typedef struct {
		unsigned char char_var1;
		struct inner24 {
			unsigned int int_var1;
			unsigned int int_var2;
			unsigned int int_var3;
		} inner_024;
		long long_var1;
} test024_t;

typedef union {
		struct inner25 {
			float float_var1;
			float float_var2;
			char *str;
		} inner_025;
		struct inner25b {
			unsigned char char_var1;
			unsigned char char_var2;
			char *str2;
		} inner_025b;
} test025_t;

typedef struct {
		char char_var1;
		char char_var2;
		char char_var3;
} test026_t;

typedef struct {
		union inner27 {
			long long_var1;
			unsigned short short_var1;
			char char_var1;
		} inner_027;
		struct inner27b {
			char char_var2;
			char char_var3;
			char *str;
		} inner_027b;
		long long_var2;
} test027_t;

typedef struct {
		double d_var1;
		unsigned char char_var1;
		double d_var2;
		unsigned char char_var2;
} test028_t;

typedef union {
		struct inner29 {
			_Bool bool1;
			_Bool bool2;
			_Bool bool3;
		} inner_029;
		struct inner29b {
			char char_var1;
			char char_var2;
			char *str;
		} inner_029b;
		long long_var1;
} test029_t;

typedef struct {
		long long_var1;
		struct inner30 {
			unsigned char char_var1;
			unsigned char char_var2;
			unsigned char char_var3;
		} inner_030;
		long long_var2;
} test030_t;

typedef struct {
		long long_var1;
		struct inner31 {
			char char_var1;
			int array[10];
		} inner_031;
		long long_var2;
} test031_t;

typedef struct {
		char var1;
		int  var2;
		long var3;
		float var4;
} test034_t;

typedef struct {
		struct inner35 {
			char char_var1;
			unsigned short short_var1;
			char *str;
		} inner_035;
		struct inner35b {
			float float_var1;
			double double_var1;
		} inner_035b;
		long long_var;
} test035_t;

void test001(const test001_t *p) {
	ichck(1, 0, p->char_var1, "compound literal No.1 NG\n");
	ichck(1, 2, p->char_var2, "compound literal No.1 NG\n");
	ichck(1, 3, p->char_var3, "compound literal No.1 NG\n");
}

void test002(const test002_t *p) {
	ichck(2, 1, p->char_var1, "compound literal No.2 NG\n");
	ichck(2, 2, p->inner_002.char_var2, "compound literal No.2 NG\n");
	ichck(2, 3, p->inner_002.char_var3, "compound literal No.2 NG\n");
	schck(2, "abc", p->inner_002.str, "compound literal No.2 NG\n");
}

void test003(const test003_t *p) {
	ichck(3, 1, p->bool1, "compound literal No.3 NG\n");
	ichck(3, 0, p->bool2, "compound literal No.3 NG\n");
	ichck(3, 1, p->bool3, "compound literal No.3 NG\n");
}

void test004(const test004_t *p) {
	ichck(4, 1, p->char_var1, "compound literal No.4 NG\n");
	ichck(4, 1, p->inner_004.bool1, "compound literal No.4 NG\n");
	ichck(4, 0, p->inner_004.bool2, "compound literal No.4 NG\n");
	ichck(4, 1, p->inner_004.bool3, "compound literal No.4 NG\n");
}

void test005(const test005_t *p) {
	ichck(5, 1, p->char_var1, "compound literal No.5 NG\n");
	lichck(5, 2, p->inner_005.long_var1, "compound literal No.5 NG\n");
	lichck(5, 3, p->inner_005.long_var2, "compound literal No.5 NG\n");
	lichck(5, 4, p->inner_005.long_var3, "compound literal No.5 NG\n");
}

void test006(const test006_t *p) {
	sichck(6, 1, p->short_var1, "compound literal No.6 NG\n");
	sichck(6, 2, p->short_var2, "compound literal No.6 NG\n");
	sichck(6, 3, p->short_var3, "compound literal No.6 NG\n");
}

void test007(const test007_t *p) {
	char src[4] = "abc";
	char dest[10];
	(*(p->p))(dest, src);
	sichck(7, 1, p->short_var1, "compound literal No.7 NG\n");
	sichck(7, 2, p->short_var2, "compound literal No.7 NG\n");
	schck(7, "abc", dest, "compound literal No.7 NG\n");
}

void test008(const test008_t *p) {
	ichck(8, 1, p->char_var1, "compound literal No.8 NG\n");
	ichck(8, 2, p->inner_008.char_var2, "compound literal No.8 NG\n");
	ichck(8, 0, p->inner_008.char_var3, "compound literal No.8 NG\n");
	llichck(8, 4, p->inner_008.ll_var1, "compound literal No.8 NG\n");
}

void test009(const test009_t *p) {
	sichck(9, 100, p->short_var1, "compound literal No.9 NG\n");
	sichck(9, 200, p->short_var2, "compound literal No.9 NG\n");
	sichck(9, 300, p->short_var3, "compound literal No.9 NG\n");
}

void test010(const test010_t *p) {
	schck(10, "abc", p->str1, "compound literal No.10 NG\n");
	schck(10, "def", p->str2, "compound literal No.10 NG\n");
	schck(10, "xyz", p->str3, "compound literal No.10 NG\n");
}

void test011(const test011_t *p) {
	ichck(11, 2, p->char_var1, "compound literal No.11 NG\n");
	ichck(11, 1, p->inner_011.bit1, "compound literal No.11 NG\n");
	ichck(11, 0, p->inner_011.bit2, "compound literal No.11 NG\n");
	ichck(11, 1, p->inner_011.bit3, "compound literal No.11 NG\n");
	lichck(11, 100, p->inner_011.long_var1, "compound literal No.11 NG\n");
}

void test012(const test012_t *p) {
	ichck(12, 5, p->char_var1, "compound literal No.12 NG\n");
	ichck(12, 1, p->bit1, "compound literal No.12 NG\n");
	ichck(12, 0, p->bit2, "compound literal No.12 NG\n");
	ichck(12, 1, p->bit3, "compound literal No.12 NG\n");
	lichck(12, 15, p->long_var1, "compound literal No.12 NG\n");
}

void test013(const test013_t *p) {
	fchck(13, 1.1, crealf(p->comp_var1), 0.0, "compound literal No.13 aNG\n");
	fchck(13, 0.0, cimagf(p->comp_var1), 0.0, "compound literal No.13 bNG\n");
	dchck(13, 2.2, creal(p->comp_var2), 0.0, "compound literal No.13 cNG\n");
	dchck(13, 0.0, cimag(p->comp_var2), 0.0, "compound literal No.13 dNG\n");
	ldchck(13, 3.3, creall(p->comp_var3), 0.0,"compound literal No.13 eNG\n");
	ldchck(13, (long double)0.0, (long double)cimagl(p->comp_var3), 0.0,"compound literal No.13 fNG\n");
}

void test014(const test014_t *p) {
	lichck(14, 0, p->lli_var1, "compound literal No.14 NG\n");
	lichck(14, 2, p->lli_var2, "compound literal No.14 NG\n");
	lichck(14, 0, p->lli_var3, "compound literal No.14 NG\n");
}

void test015(const test015_t *p) {
	ichck(15, 1, p->char_var1, "compound literal No.15 NG\n");
	ichck(15, 2, p->inner_015.char_var2, "compound literal No.15 NG\n");
	ichck(15, 100, p->inner_015.long_var1, "compound literal No.15 NG\n");
	schck(15, "abc", p->inner_015.str, "compound literal No.15 NG\n");
}

void test016(const test016_t *p) {
	ichck(16, 1, p->char_var1, "compound literal No.16 NG\n");
	ichck(16, 2, p->inner_016.char_var2, "compound literal No.16 NG\n");
	ichck(16, 100, p->inner_016.int_var1, "compound literal No.16 NG\n");
	schck(16, "abc", p->inner_016.str, "compound literal No.16 NG\n");
	ichck(16, 2, p->int_var2, "compound literal No.16 NG\n");
}

void test017(const test017_t *p) {
	ichck(17, 0, p->char_var1, "compound literal No.17 NG\n");
	ichck(17, 100, p->lli_var1, "compound literal No.17 NG\n");
	ichck(17, 0, p->char_var2, "compound literal No.17 NG\n");
	ichck(17, 400, p->lli_var2, "compound literal No.17 NG\n");
}

void test018(const test018_t *p) {
	ichck(18, 10, p->char_var1, "compound literal No.18 NG\n");
	ichck(18, RED, p->e, "compound literal No.18 NG\n");
}

void test019(const test019_t *p) {
	lichck(19, 100, p->long_var1, "compound literal No.19 NG\n");
	lichck(19, 200, p->long_var2, "compound literal No.19 NG\n");
	lichck(19, 300, p->long_var3, "compound literal No.19 NG\n");
}

void test020(const test020_t *p) {
	ichck(20, 0, p->inner_020.short_var1, "compound literal No.20 NG\n");
	ichck(20, 2, p->inner_020.short_var2, "compound literal No.20 NG\n");
}

void test021(const test021_t *p) {
	ichck(21, 1, p->inner_021.short_var1, "compound literal No.21 NG\n");
	ichck(21, 2, p->inner_021.short_var2, "compound literal No.21 NG\n");
	schck(21, "abc", p->inner_021.str, "compound literal No.21 NG\n");
	ichck(21, 11, p->inner_021b.char_var1, "compound literal No.21 NG\n");
	ichck(21, 22, p->inner_021b.char_var2, "compound literal No.21 NG\n");
	schck(21, "xyz", p->inner_021b.str2, "compound literal No.21 NG\n");
	lichck(21, 100, p->long_var, "compound literal No.21 NG\n");
}

void test022(const test022_t *p) {
	ldchck(22, 100, p->inner_022.ld_var1, 0.0, "compound literal No.22 NG\n");
}

void test023(const test023_t *p) {
	ichck(23, 10, p->char_var1, "compound literal No.23 NG\n");
	ichck(23, 20, p->inner_023.char_var2, "compound literal No.23 NG\n");
	ichck(23, 1, p->inner_023.int_var1, "compound literal No.23 NG\n");
	ichck(23, CAT, p->inner_023.e, "compound literal No.23 NG\n");
}

void test024(const test024_t *p) {
	ichck(24, 10, p->char_var1, "compound literal No.24 NG\n");
	ichck(24, 20, p->inner_024.int_var1, "compound literal No.24 NG\n");
	ichck(24, 30, p->inner_024.int_var2, "compound literal No.24 NG\n");
	ichck(24, 40, p->inner_024.int_var3, "compound literal No.24 NG\n");
	lichck(24, 50, p->long_var1, "compound literal No.24 NG\n");
}

void test025(const test025_t *p) {
	fchck(25, 10.0, p->inner_025.float_var1, 0.0, "compound literal No.25 NG\n");
	fchck(25, 20.5, p->inner_025.float_var2, 0.0, "compound literal No.25 NG\n");
	schck(25, "abc", p->inner_025.str, "compound literal No.25 NG\n");
}

void test026(const test026_t *p) {
	ichck(26, 0, p->char_var1, "compound literal No.26 NG\n");
	ichck(26, 2, p->char_var2, "compound literal No.26 NG\n");
	ichck(26, -3, p->char_var3, "compound literal No.26 NG\n");
}

void test027(const test027_t *p) {
#if defined(__sparc) 
	ichck(27, 0, p->inner_027.char_var1, "compound literal No.27 NG\n");
#else
	ichck(27, 10, p->inner_027.char_var1, "compound literal No.27 NG\n");
#endif
	ichck(27, 20, p->inner_027b.char_var2, "compound literal No.27 NG\n");
	ichck(27, 30, p->inner_027b.char_var3, "compound literal No.27 NG\n");
	schck(27, "xyz", p->inner_027b.str, "compound literal No.27 NG\n");
	lichck(27, 50, p->long_var2, "compound literal No.27 NG\n");
}

void test028(const test028_t *p) {
	ichck(28, 1, p->char_var1, "compound literal No.28 NG\n");
	ichck(28, 2, p->char_var2, "compound literal No.28 NG\n");
	dchck(28, 10.0, p->d_var1, 0.0, "compound literal No.28 NG\n");
	dchck(28, 20.0, p->d_var2, 0.0, "compound literal No.28 NG\n");
}

void test029(const test029_t *p) {
	ichck(29, 1, p->inner_029.bool1, "compound literal No.29 NG\n");
	ichck(29, 1, p->inner_029.bool2, "compound literal No.29 NG\n");
	ichck(29, 0, p->inner_029.bool3, "compound literal No.29 NG\n");
}

void test030(const test030_t *p) {
	lichck(30, 10, p->long_var1, "compound literal No.30 NG\n");
	ichck(30, 20, p->inner_030.char_var1, "compound literal No.30 NG\n");
	ichck(30, 30, p->inner_030.char_var2, "compound literal No.30 NG\n");
	ichck(30, 40, p->inner_030.char_var3, "compound literal No.30 NG\n");
	lichck(30, 50, p->long_var2, "compound literal No.30 NG\n");
}

void test031(const test031_t *p) {
	lichck(31, 1, p->long_var1, "compound literal No.31 NG\n");
	cchck(31, 100, p->inner_031.char_var1, "compound literal No.31 NG\n");
	ichck(31, -1, p->inner_031.array[0], "compound literal No.31 NG\n");
	ichck(31, 10, p->inner_031.array[1], "compound literal No.31 NG\n");
	ichck(31, 20, p->inner_031.array[2], "compound literal No.31 NG\n");
	ichck(31, 30, p->inner_031.array[3], "compound literal No.31 NG\n");
	ichck(31, 40, p->inner_031.array[4], "compound literal No.31 NG\n");
	ichck(31, 50, p->inner_031.array[5], "compound literal No.31 NG\n");
	ichck(31, 60, p->inner_031.array[6], "compound literal No.31 NG\n");
	ichck(31, 70, p->inner_031.array[7], "compound literal No.31 NG\n");
	ichck(31, 80, p->inner_031.array[8], "compound literal No.31 NG\n");
	ichck(31, 90, p->inner_031.array[9], "compound literal No.31 NG\n");
	lichck(31, 2, p->long_var2, "compound literal No.31 NG\n");
}

void test034() {
	test034_t s ;
	s = (test034_t){.var3=300, .var1=100, .var2=200, .var4=1.23};
	int ret = s.var1 + s.var2;
	ichck(34, 100, s.var1, "compound literal No.34 NG\n");
	ichck(34, 200, s.var2, "compound literal No.34 NG\n");
	lichck(34, 300, s.var3, "compound literal No.34 NG\n");
	fchck(34, 1.23, s.var4, 0.0, "compound literal No.34 NG\n");
	ichck(34, 300, ret, "compound literal No.34 NG\n");
}

void test035() {
	test035_t s ;
	s = (test035_t){.inner_035b.float_var1=12.3, .inner_035.short_var1=2, .long_var = 100, .inner_035b.double_var1=45.6, .inner_035.char_var1=1};
	ichck(35, 1, s.inner_035.char_var1, "compound literal No.35 NGa\n");
	ichck(35, 2, s.inner_035.short_var1, "compound literal No.35 NGb\n");
	fchck(35, 12.3, s.inner_035b.float_var1, 0.0, "compound literal No.35 NGc\n");
	dchck(35, 45.6, s.inner_035b.double_var1, 0.0, "compound literal No.35 NGd\n");
	lichck(35, 100, s.long_var, "compound literal No.35 NGe\n");
	int ret = s.inner_035.char_var1 + s.inner_035.short_var1;
	ichck(35, 3, ret, "compound literal No.35 NGf\n");
}

void test036(){
	struct test036 {
		char char_var;
		int int_var;
		long long_var;
  		enum E { e1, e2 } e;
		float float_var;
		double double_var;
	} s = {.long_var = 100, .double_var = 12.3, .float_var = 45.6, .int_var = 200, .e = e2, .char_var = 20};
	ichck(36, 20, s.char_var, "compound literal No.36 NGa\n");
	ichck(36, 200, s.int_var, "compound literal No.36 NGb\n");
	ichck(36, 100, s.long_var, "compound literal No.36 NGc\n");
	ichck(36, 1, s.e, "compound literal No.36 NGd\n");
	fchck(36, 45.6, s.float_var, 0.0, "compound literal No.36 NGe\n");
	dchck(36, 12.3, s.double_var, 0.0, "compound literal No.36 NGf\n");
}

int main(){

	header("GNU comp","Gnu Compound Literal test");
	test001(&(test001_t){.char_var2=2, .char_var3=3});
	test002(&(test002_t){.inner_002.char_var2=2, .inner_002.char_var3=3, .char_var1=1, .inner_002.str="abc"});
	test003(&(test003_t){1, 0, 2});
	test004(&(test004_t){.char_var1=1, .inner_004.bool1=true, .inner_004.bool2=false, .inner_004.bool3=true});
	test005(&(test005_t){1, 2, 3, 4});
	test006(&(test006_t){1, 2, 3});
	test007(&(test007_t){.p=strcpy, .short_var2=2, .short_var1=1});
	test008(&(test008_t){.inner_008.ll_var1=4, .inner_008.char_var2=2, .char_var1=1});
	test009(&(test009_t){100, 200, 300});
	test010(&(test010_t){"abc", "def", "xyz"});
	test011(&(test011_t){.inner_011.bit2=0, .inner_011.bit1=1, .inner_011.long_var1=100, .inner_011.bit3=1,  .char_var1=2});
	test012(&(test012_t){5, 1, 0, 1, 15});
	test013(&(test013_t){.comp_var2=2.2, .comp_var3=3.3, .comp_var1=1.1});
	test014(&(test014_t){.lli_var2=2});
	test015(&(test015_t){.char_var1=1, .inner_015.char_var2=2, .inner_015.long_var1=100, .inner_015.str="abc"});
	test016(&(test016_t){.int_var2=2, .inner_016.str="abc", .inner_016.int_var1=100, .inner_016.char_var2=2, .char_var1=1});
	test017(&(test017_t){.lli_var1=100, .lli_var2=400});
	test018(&(test018_t){10, RED});
	test019(&(test019_t){.long_var3=300, .long_var1=100, .long_var2=200});
	test020(&(test020_t){.inner_020.short_var2=2});
	test021(&(test021_t){.inner_021b.char_var2=22, .inner_021.short_var2=2, .inner_021b.str2="xyz", .long_var = 100, .inner_021b.char_var1=11, .inner_021.short_var1=1, .inner_021.str="abc"});
	test022(&(test022_t){.inner_022.ld_var1=100});
	test023(&(test023_t){.inner_023.e=CAT, .char_var1=10, .inner_023.int_var1=1, .inner_023.char_var2=20});
	test024(&(test024_t){10, 20, 30, 40, 50});
	test025(&(test025_t){.inner_025.str="abc", .inner_025.float_var2=20.5, .inner_025.float_var1=10.0, });
	test026(&(test026_t){.char_var2=2, .char_var3=-3});
	test027(&(test027_t){10, 20, 30, "xyz", 50});
	test028(&(test028_t){.char_var2=2, .d_var1=10.0, .char_var1=1, .d_var2=20.0});
	test029(&(test029_t){.inner_029.bool2=2, .inner_029.bool1=1});
	test030(&(test030_t){10, 20, 30, 40, 50});
	test031(&(test031_t){.inner_031.array[5]=50, .inner_031.array[1]=10, .inner_031.array[4]=40, .long_var2=2, .inner_031.array[9]=90, .inner_031.array[2]=20, .long_var1=1, .inner_031.array[0]=-1, .inner_031.array[6]=60, .inner_031.array[3]=30, .inner_031.array[7]=70, .inner_031.array[8]=80, .inner_031.char_var1=100});
	test034();
	test035();
	test036();

	header("GNU comp","Gnu Compound Literal test");


}

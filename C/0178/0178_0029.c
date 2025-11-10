#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <complex.h>
#include"004.h"

#define NUM 100
#define INT_MAX 47295

#define TEXT "TEXT"

enum plang { FORTRAN=1, C, CPLUS, MPI=5, GMPLIB, XPFortran };

typedef struct tpof_t1{
	float float_var[10];
	char *char_var;
	long long int lli_var;
} tpof_t1;

typedef struct{
	tpof_t1 tpof[2];
	char char_var;
	const int int_var;
} tpof_t2;

typedef union tpof_u1{
	char char_var[2];
	unsigned short short_var;
} tpof_u1;

typedef union tpof_u2{
	tpof_u1 u1_var[2];
	int int_var;
} tpof_u2;

tpof_t1 tmp;
void chk_tpt1(typeof(tmp), float, char*, long long int, int);
void print_ptpt1(typeof(tmp)*, float, char*, long long int, int);

int main()
{
	unsigned int int_var = INT_MAX;
	int i;
	char *char_var = "char check";
	float float_var[NUM] = {[0 ... 99]=149.75};
	const float _Complex complex_var = 1586.25f + 134.1fi;
	static _Bool bool_var=true;
	volatile enum plang enum_var;
	register struct tpof_t1 st_var = {.float_var[0 ... 9]=1.25, .char_var="check", .lli_var=2147483647};
	tpof_t2 st2_var = {.tpof[0]=st_var, .tpof[1]=st_var, .char_var='A', .int_var=5};
	union tpof_u1 u1_var={.short_var=65535};
	tpof_u2 u2_var = {.u1_var[0].char_var="A", .u1_var[1].short_var=4321};
	double double_var = 12345;
	
	header("GNU typeof","Gnu typeof test");
	
	typeof(int_var) ty_int = int_var;
	ichck(1, ty_int, INT_MAX, "typeof unsinged int NG\n");
	
	typeof(float_var) ty_float;
	for(i=0;i<NUM;i++)
	{
		ty_float[i] = float_var[i];
	}
	
	ichck(2, sizeof(float)*NUM, sizeof(ty_float), "typeof float array check1 NG\n");
	for(i=0;i<NUM;i++)
	{
		fchck(2, 149.75, float_var[i], 0.1, "typeof float array check2 NG\n");
	}
	
	
	typeof(char_var) ty_char;
	ty_char = char_var;
	schck(3, "char check", ty_char, "typeof char pointer NG\n");
		
	typeof(complex_var) ty_complex = complex_var;
	fchck(4, 1586.03, crealf(ty_complex), 0.1, "typeof const complex check1 NG\n");
	fchck(4, 134.1, cimagf(ty_complex), 0.1, "typeof const complex check1 NG\n");
		
	typeof(bool_var) ty_bool = bool_var;
	if(ty_bool != true)
	{
		printf("typeof bool NG\n");
	}
	
	
	typeof(enum_var) ty_enum = GMPLIB;
	ichck(6, GMPLIB, ty_enum, "typeof enum NG\n");
	
	typeof(st_var.lli_var) ty_lli = st_var.lli_var;
	lichck(7, 2147483647, ty_lli, "typeof long long int NG\n");
	
	typeof(st_var) ty_t1 = st_var;
	chk_tpt1(ty_t1, 1.25, "check", 2147483647, 8);
	
	typeof(st2_var) ty_t2 = {.tpof[0]=st_var, .tpof[1]={.float_var[0 ... 9]=-1.375, .char_var="ch", .lli_var=-2147483647}, .char_var='A'};
	chk_tpt1(ty_t2.tpof[0], 1.25, "check", 2147483647, 9);
	chk_tpt1(ty_t2.tpof[1], -1.375, "ch", -2147483647, 9);
	cchck(9, 'A', ty_t2.char_var, "typeof char (struct) NG\n");
	ichck(9, 0, ty_t2.int_var, "typeof int (stuct) NG\n");
	
	typeof(u1_var) ty_u1;
	strcpy(ty_u1.char_var, "B");
	schck(10, ty_u1.char_var, "B", "typeof union char array NG\n");
	
	typeof(u2_var) ty_u2 = {.u1_var[0]=u2_var.u1_var[1], .u1_var[1].char_var="T"};
	sichck(11, u2_var.u1_var[1].short_var, ty_u2.u1_var[0].short_var, "typeof short (UNION) NG\n");
	schck(11, "T", ty_u2.u1_var[1].char_var, "typeof char array (UNION) NG\n");
	
	print_ptpt1(&(typeof(st_var)){.float_var[0 ... 9]=7891.25, .char_var="func", .lli_var=-148599}, 7891.25, "func", -148599, 12);
	
	typeof(double_var + int_var) ty_dbplint = double_var + int_var;
	double_var = double_var + int_var;
	ldchck(13, double_var, ty_dbplint, 0.0, "typeof double+int NG\n");
	
	unsigned int itmp = 1000;
	typeof(int_var - itmp) ty_intminus= int_var - itmp;
	int_var = int_var - itmp;
	ichck(14, int_var, ty_intminus, "typeof int-int NG\n");
	
	typeof(NUM) ty_def1 = NUM;
	ichck(15, NUM, ty_def1, "typeof define(int)\n");
	
	typeof(TEXT) ty_def2 = TEXT;
	schck(16, TEXT, ty_def2, "typeof define(char*)\n");
	
	struct tpof_t3{
		int int_var;
		float float_var;
	} st3_var = {.int_var=3};
	
	struct tpof_t3 *st3_var2;
	st3_var2 = (typeof(st3_var) * ) malloc(sizeof(typeof(st3_var)));
	st3_var2->int_var = 3775;
	st3_var2->float_var = 4.25;
	ichck(17, 3775, st3_var2->int_var, "typeof cast + sizeof(typeof)\n");
	fchck(17, 4.25, st3_var2->float_var, 0.1, "typeof cast + sizeof(typeof)\n");
	free(st3_var2);

	header("GNU typeof","Gnu typefof test");
	
	return 0;
}

void chk_tpt1(typeof(tmp) ty1, float fl, char* pch, long long int lli, int itemno)
{
	int i;
	for(i=0;i<10;i++) fchck(itemno, fl, ty1.float_var[i], 0.1, "typeof float array (struct) NG\n");
	schck(itemno, ty1.char_var, pch, "typeof char pointer (struct) NG\n");
	llichck(itemno, lli, ty1.lli_var, "typeof long long int NG\n");
}

void print_ptpt1(typeof(tmp) *ty1, float fl, char* pch, long long int lli, int itemno)
{
	int i;
	for(i=0;i<10;i++) fchck(itemno, fl, ty1->float_var[i], 0.1, "typeof float array (struct) NG\n");
	schck(itemno, ty1->char_var, pch, "typeof char pointer (struct) NG\n");
	llichck(itemno, lli, ty1->lli_var, "typeof long long int NG\n");
}

#include<stdio.h>
#include <string.h>
#include"004.h"

typedef struct {
} st0;

typedef struct {} s;

typedef struct {} longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2;

typedef struct {
	s st_var;
} st3;

typedef struct {
	int int_var;
	s st_var;
} st4;

typedef struct {
	s st_var1;
	int int_var;
	s st_var2;
	s st_var3;
	float float_var;
	s st_var4;
} st5;



typedef struct {
	int int_var;
	double double_var;
	char char_var[20];
} samp;

typedef struct {
	samp st_samp;
	s s[];
} st7;

int main()
{
	header("GNU ","Gnu Structures With No Members");
	
	st0 st_st0;
	ichck(0, 0, sizeof(st_st0), "test0 NG\n");
	
	s st_st1;
	ichck(1, 0, sizeof(st_st1), "test1 NG\n");
	
	longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2longnamest2 st_st2;
	ichck(2, 0, sizeof(st_st2), "test2 NG\n");
	
	st3 st_st3;
	ichck(3, 0, sizeof(st_st3), "test3 NG\n");
	
	st4 st_st4;
	st_st4.int_var = 12345;
	ichck(4, sizeof(int), sizeof(st_st4), "test4-1 NG\n");
	ichck(4, 12345, st_st4.int_var, "test4-2 NG\n");
	
	st5 st_st5;
	st_st5.int_var = 156;
	st_st5.float_var = 123.25;
	ichck(5, sizeof(int) + sizeof(float), sizeof(st_st5), "test5-1 NG\n");
	ichck(5, 156, st_st5.int_var, "test5-2 NG\n");
	fchck(5, 123.25, st_st5.float_var, 0.1, "test5-3 NG\n");
	
	struct {
		st4 s;
	} st_st6 = { .s.int_var=6553};
	ichck(6, 6553, st_st6.s.int_var, "test6 NG\n");
	
	st7 st_st7 = { .st_samp.double_var = 6528, .st_samp.int_var=125, .st_samp.char_var = "length 0 test"};
	ichck(7, 125, st_st7.st_samp.int_var, "test7-1 NG\n");
	ldchck(7, 6528, st_st7.st_samp.double_var, 0.0, "test7-2 NG\n");
	schck(7, "length 0 test", st_st7.st_samp.char_var, "test7-3 NG\n");
	
	header("GNU ","Gnu Structures With No Members");
}

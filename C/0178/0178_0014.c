#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <complex.h>
#include"004.h"

#define NUM0 10
#define NUM  100

typedef union u1{
	double _Complex complex_var[NUM];
	unsigned int int_var[NUM];
} u1;

typedef struct st1{
	long long int lli_var[NUM];
	char char_var[NUM0];
} st1;

typedef struct st2{
	unsigned short short_var[NUM0];
	char char_var[NUM0];
} st2;

typedef struct st3{
	unsigned char uchar_var[NUM0];
	signed int int_var;
	double double_var;
	float float_var;
} st3;

typedef struct st4{
	int int_var;
	enum en{ e1=8, e2, e3 } en_var;
} st4;

typedef struct st5{
	float float_var;
	st4 st_st4;
} st5;

typedef union u2{
	int int_var;
	short short_var[2];
} u2;

typedef union u3{
	int int_var;
	u2 union_u2;
} u3;

typedef struct st6{
	char b1:4;
	char b2:2;
	short short_var;
	int int_var;
}st6;

typedef struct st7{
	double double_var;
	st6 st_st6;
} st7;

int main()
{	
	int i,j;
	
	header("GNU Designated Initializers","GNU Designated Initializers");
	
	u1 union_u1 = {.complex_var[0 ... NUM-1] = 1758.75 + 135.125i};
	for(i=0; i<NUM; i++)
	{
		dchck(1, 1758.75, creal(union_u1.complex_var[i]), 0.0, "test1-1\n");
		dchck(1, 135.125, cimag(union_u1.complex_var[i]), 0.0, "test1-2\n");
	}
	
	u1 union_u2 = {.int_var[0 ... 50] = 65535, .int_var[20 ... 80] = 32767};
	for(i=0; i<NUM; i++)
	{
		if(i>=0 && i<20)
		{
			ichck(2, 65535, union_u2.int_var[i], "test2-1\n");
		}
		else if(i>=20 && i<=80)
		{
			ichck(2, 32767, union_u2.int_var[i], "test2-2\n");
		}
		else
		{
			ichck(2, 0, union_u2.int_var[i], "test2-3\n");
		}
	}
	
	double double_var[NUM] = {[0 ... 40] = 922720.0, [50 ... NUM-1] = 922720.0 };
	for(i=0;i<NUM;i++)
	{
		if(i>40 && i<50)
		{
			dchck(3, 0.0, double_var[i], 0.1, "test3-2\n");
		}
		else
		{
			dchck(3, 922720.0, double_var[i], 0.1, "test3-2\n");
		}
		
	}
	
	st1 st_st1 = {.lli_var[0 ... 40] = 92233720, .lli_var[50 ... NUM-1] = 92233720 };
	for(i=0; i<NUM; i++)
	{
		if(i>40 && i<50)
		{
			lichck(4, 0, st_st1.lli_var[i], "test4-1\n");
		}
		else
		{
			lichck(4, 92233720, st_st1.lli_var[i], "test4-2\n");
		}
		
	}
	
	double _Complex complex_var[NUM][NUM] = {[10 ... NUM-1][10 ... NUM-1] = 1758.75 + 135.125i};
	double double_tmp = 0;
	for(i=0;i<NUM;i++)
	{
		for(j=0;j<NUM;j++)
		{
			if(i>=10 && j>=10)
			{
				dchck(5, 1758.75, creal(complex_var[i][j]), 0.1,  "test5-1\n");
				dchck(5, 135.125, cimag(complex_var[i][j]), 0.1, "test5-2\n");
			}
			else
			{
				dchck(5, 0.0, creal(complex_var[i][j]), 0.1, "test5-3\n");
				dchck(5, 0.0, cimag(complex_var[i][j]), 0.1, "test5-4\n");
			}
		}
	}
	
	int array[3][3] = { [1][2] = 1 }; 
	for(i=0; i<3; i++)
	{
		for(j=0; j<3; j++)
		{
			if(i==1 && j==2)
			{
				ichck(5, 1, array[i][j], "test5 ex1-1\n");
			}
			else
			{
				ichck(5, 0, array[i][j], "test5 ex1-1\n");
			}
		}
	}
	
	int array2[3][3] = { [2] = { 1, 2, 3 } };
	for(i=0; i<3; i++)
	{	
		if(i==2)
		{
			ichck(5, 1, array2[i][0], "test5 ex2-1\n");
			ichck(5, 2, array2[i][1], "test5 ex2-2\n");
			ichck(5, 3, array2[i][2], "test5 ex2-3\n");
		}
		else
		{
			ichck(5, 0, array2[i][0], "test5 ex2-4\n");
			ichck(5, 0, array2[i][1], "test5 ex2-5\n");
			ichck(5, 0, array2[i][2], "test5 ex2-6\n");
		}
	}
	
	st2 st_st2 = {.short_var[0]=0, .short_var[1]=1, .short_var[2]=2, .short_var[3]=3, .short_var[4]=4,
	              .short_var[5]=5, .short_var[6]=6, .short_var[7]=7, .short_var[8]=8, .short_var[9]=9};
	for(i=0; i<NUM0; i++)
	{
		sichck(6, i, st_st2.short_var[i], "test6-1\n");
	}
	schck(6, "\0", st_st2.char_var, "test6-2\n");
	
	char char_var[NUM]={[0 ... 80]='F'};
	for(i=0;i<NUM;i++)
	{
		if(i<=80)
		{
			cchck(7, 'F', char_var[i], "test7-1\n");
		}
		else
		{
			cchck(7, '\0', char_var[i], "test7-2\n");
		}
	}
	
	float float_var[NUM][NUM] = {[0 ... 50][0 ... 50] = 136.25, [20 ... 80][20 ... 80] = 543.375};
	for(i=0; i<NUM; i++)
	{
		for(j=0; j<NUM; j++)
		{
			if(i>=0 && i<20 && j>=0 && j <=50)
			{
				fchck(8, 136.25, float_var[i][j], 0.1, "test8-1\n");
			}
			else if(i>=20 && i<=50 && j>=0 && j<20)
			{
				fchck(8, 136.25, float_var[i][j], 0.1, "test8-2\n");
			}
			else if(i>=20 && i<=80 && j>=20 && j<=80)
			{
				fchck(8, 543.375, float_var[i][j], 0.1, "test8-3\n");
			}
			else
			{
				fchck(8, 0.0, float_var[i][j], 0.1, "test8-4\n");
			}
		}
	}
	
	_Bool bool_var[NUM0][NUM0]={
		[0][0]=true,[1][0]=true,[2][0]=true,[3][0]=true,[4][0]=true,[5][0]=true,[6][0]=true,[7][0]=true,[8][0]=true,[9][0]=true,
		[0][1]=true,[1][1]=true,[2][1]=true,[3][1]=true,[4][1]=true,[5][1]=true,[6][1]=true,[7][1]=true,[8][1]=true,[9][1]=true,
		[0][2]=true,[1][2]=true,[2][2]=true,[3][2]=true,[4][2]=true,[5][2]=true,[6][2]=true,[7][2]=true,[8][2]=true,[9][2]=true,
		[0][3]=true,[1][3]=true,[2][3]=true,[3][3]=true,[4][3]=true,[5][3]=true,[6][3]=true,[7][3]=true,[8][3]=true,[9][3]=true,
		[0][4]=true,[1][4]=true,[2][4]=true,[3][4]=true,[4][4]=true,[5][4]=true,[6][4]=true,[7][4]=true,[8][4]=true,[9][4]=true,
		[0][5]=false,[0][5]=false,[0][5]=false,[0][5]=false,[0][5]=false,[0][5]=false,[0][5]=false,[0][5]=false,[0][5]=false,[0][5]=false,
		[0][6]=false,[0][6]=false,[0][6]=false,[0][6]=false,[0][6]=false,[0][6]=false,[0][6]=false,[0][6]=false,[0][6]=false,[0][6]=false,
		[0][7]=false,[0][7]=false,[0][7]=false,[0][7]=false,[0][7]=false,[0][7]=false,[0][7]=false,[0][7]=false,[0][7]=false,[0][7]=false,
		[0][8]=false,[0][8]=false,[0][8]=false,[0][8]=false,[0][8]=false,[0][8]=false,[0][8]=false,[0][8]=false,[0][8]=false,[0][8]=false,
		[0][9]=false,[0][9]=false,[0][9]=false,[0][9]=false,[0][9]=false,[0][9]=false,[0][9]=false,[0][9]=false,[0][9]=false,[0][9]=false,
	};
	
	for(i=0; i<NUM0; i++)
	{
		for(j=0; j<NUM0; j++)
		{
			if(j>=0 && j<=4)
			{
				if(bool_var[i][j] != true)
				{
					printf("test9-1 NG\n");
				}
			}
			else
			{
				if(bool_var[i][j] != false)
				{
					printf("test9-2 NG\n");
				}
			}
		}
		
	}
	
	st3 st_st31={.int_var=4, .float_var=2487.27, .double_var=125486.0, .uchar_var="uchar"};
	ichck(16, 4, st_st31.int_var, "test16-1\n");
	fchck(16, 2487.27, st_st31.float_var, 0.1, "test16-2\n");
	dchck(16, 125486.0, st_st31.double_var, 0.1, "test16-3\n");
	schck(16, "uchar", st_st31.uchar_var, "test16-4\n");
	
	st3 st_st32={.int_var=5};
	ichck(17, 5, st_st32.int_var, "test17-1\n");
	fchck(17, 0.0, st_st32.float_var, 0.1, "test17-2\n");
	dchck(17, 0.0, st_st32.double_var, 0.1, "test17-3\n");
	schck(17, "\0", st_st32.uchar_var, "test17-4\n");
	
	st5 st_st51 = {.float_var=257.0, .st_st4.en_var = e3};
	ichck(18, 0, st_st51.st_st4.int_var, "test18-1\n");
	fchck(18, 257.0, st_st51.float_var, 0.1, "test18-2\n");
	ichck(18, 10, st_st51.st_st4.en_var, "test18-3\n");
	
	u3 union_u3 = {.int_var=4, .union_u2.short_var[0]=2, .union_u2.short_var[1]=2 };
	sichck(19, 2, union_u3.union_u2.short_var[0], "test19-1\n");
	sichck(19, 2, union_u3.union_u2.short_var[1], "test19-2\n");
	
	st7 st_st7 = {.double_var=128, .st_st6.b1 = 0x05, .st_st6.int_var=32556};
	printf("\t bit field b1=%u b2=%u\n", st_st7.st_st6.b1, st_st7.st_st6.b2);
	ichck(20, 32556, st_st7.st_st6.int_var, "test20-1\n");
	sichck(20, 0, st_st7.st_st6.short_var, "test20-2\n");
	dchck(20, 128.0, st_st7.double_var, 0.1, "test20-3\n");
	
	struct st8 {
		long long int lli_var1[10];
		long long int lli_var2;
	} st_st8 = { .lli_var2 = 65535, .lli_var1[0 ... 9] = 257 };
	for(i=0;i<10;i++) lichck(21, 257, st_st8.lli_var1[i], "test21-1\n");
	lichck(21, 65535, st_st8.lli_var2, "test21-2\n");
	
	union u4{
		int int_var;
		double double_var;
	} union_u4 = {.int_var = 32767};
	ichck(22, 32767, union_u4.int_var, "test22-1\n");
	
	struct st9 {
		double _Complex complex_var[NUM0];
		int int_var;
		struct st9_part { int int_var1, int_var2; } st[3];
	} st_st9 = { .complex_var[0 ... 9] = 75632.125 + 2359.0i, .int_var=26, .st[0 ... 2] = {128, 256} };
	
	for(i=0; i<NUM0; i++) 
	{
		dchck(23, 75632.125, creal(st_st9.complex_var[i]), 0.0, "test23-1\n");
		dchck(23, 2359.0, cimag(st_st9.complex_var[i]), 0.0, "test23-2\n");
	}
	ichck(23, 26, st_st9.int_var, "test23-3\n");
	
	for(i=0; i<3; i++)
	{
		ichck(23, 128, st_st9.st[i].int_var1, "test23-4\n");
		ichck(23, 256, st_st9.st[i].int_var2, "test23-5\n");
	}
	
	union u5 {
		short short_var;
		union u6{
			char b1:4;
			char char_var;
		} union_u6[2];
	} union_u5 = {.union_u6[0].b1=0x05, .union_u6[1].char_var='A'};
	cchck(24, 'A', union_u5.union_u6[1].char_var, "test24-2\n");
#if defined(__sparc) 
        if(union_u5.union_u6[0].char_var == 80)
	  printf("\t bit field union_u6[0].char_var=%u\n", 5);
#else
	printf("\t bit field union_u6[0].char_var=%u\n", union_u5.union_u6[0].char_var);
#endif
	
	int array3[] = { 1, 2, 3, 4, 5, 6, 7, 8};
	
	const char *msg[] = {
		"msgmsgmsg",
		NULL,
		"\t msgmsg1 -+?\0",
		"\n msgmsg1 ?-+\0",
	};
	
	
	header("GNU Designated Initializers","GNU Designated Initializers");
	
	return 0;
}

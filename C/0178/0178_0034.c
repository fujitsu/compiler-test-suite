#include<stdio.h>
#include<string.h>
#include<stdbool.h> 
#include <complex.h>
#include"004.h"

#define SIZE1 10
#define SIZE2 100
#define SIZE3 1000
#define SIZE4 10000
#define TEXT1 "@ne.co.jp"
#define TEXT2 "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTU"

typedef struct st1 {
	int int_len;
	char c[0];
} st1;

typedef struct st2 {
	signed char s[0];
	double double_len;
} st2;

typedef struct st3 {
	float float_len;
	unsigned char u1[0];
	unsigned char u2[0];
} st3;

typedef struct st4 {
	short s[0];
	long long int lli_len;
} st4;

typedef struct st5 {
	unsigned short s[0];
	st1 st;
} st5;

typedef struct st6 {
	int i[0];
	int int_len;
} st6;

typedef struct st7 {
	int int_len;
	unsigned int i1[0];
	unsigned int i2[0];
} st7;

typedef struct st8 {
	long l[0];
	long l_len;
	st1 st[SIZE1];
} st8;

typedef struct st9 {
	unsigned long l[0];
	long l_len;
	st1 st[SIZE1];
} st9;


typedef struct st10 {
	float f[0];
} st10;

typedef struct st11 {
	char char_len[3];
	long double ld[0];
} st11;

typedef struct st12 {
	long long int lli[0];
	_Bool b_num;
} st12;

typedef struct st13 {
	int *pi;
	long long int lli1[0];
	long long int lli2[0];
} st13;

typedef struct st14 {
	int int_len;
	float _Complex com[0];
} st14;

typedef struct st15 {
	_Bool b[0];
	char char_len[3];
} st15;

typedef struct st16 {
	int int_len;
	int *pi[0];
} st16;

typedef union st_uni{
	char char_var[2];
	unsigned short short_var;
} st_uni;

typedef struct st17 {
	st_uni stu[0];
	int int_len;
} st17;

typedef struct st18 {
	short short_len;
	wchar_t wch1[0];
	wchar_t wch2[0];
} st18;

typedef struct part {
	short short_len;
	int int_len;
	double double_len;
} part;

typedef struct st19 {
	part p[0];
	float float_len;
} st19;

typedef struct st20 {
	st6 *st;
	int int_len;
} st20;

typedef struct st21 {
	double double_len;
	int int_len;
	float f[0][0][0];
} st21;

int main()
{
	st1  *s;
	st2  *Pst2;
	st3  *Pst3;
	st4  *S;
	st5  *Pst5;
	st6  *Pst6;
	st7  *Pst7;
	st8  *Pst8;
	st9  *Pst9;
	st10 *Pst10;
	st11 *Pst11;
	st12 *Pst12;
	st13 *Pst13;
	st14 *Pst14;
	st15 *Pst15;
	st16 *Pst16;
	st17 *Pst17;
	st18 *Pst18;
	st19 *Pst19;
	st20 *Pst20;
	st21 *Pst21;
	
	int i,j,k;
	
	header("GNU Array Zero","Gnu Arrays of Legth Zero test Start");
	
	s = (st1*) malloc(sizeof(st1) + SIZE1);
	strcpy(s->c, TEXT1);
	s->int_len = 10;
	ichck(1, sizeof(s->int_len), sizeof(st1), "test1-1 NG\n");
	ichck(1, 10, s->int_len, "test1-2 NG\n");
	schck(1, TEXT1, s->c, "test1-3 NG\n");
	free(s);
	
	Pst2 = (st2*) malloc(sizeof(st2) + SIZE2);
	ichck(2, sizeof(Pst2->double_len), sizeof(st2), "test2-1 NG\n");
	Pst2->double_len = 100;
	strcpy(Pst2->s, TEXT2);
	schck(2, TEXT2, Pst2->s, "test2-2 NG\n");
	free(Pst2);
	
	Pst3 = (st3*) malloc(sizeof(st3) + 2*SIZE2);
	Pst3->float_len = 200;
	strcpy(Pst3->u1, TEXT1);
	strcpy(Pst3->u2, TEXT2);
	ichck(3, sizeof(Pst3->float_len), sizeof(st3), "test3-1 NG\n");
	fchck(3, 200.0, Pst3->float_len, 0.1, "test3-2 NG\n");
	schck(3, TEXT2, Pst3->u2,"test3-3 NG\n");
	free(Pst3);
	
	S = (st4*) malloc(sizeof(st4) + SIZE4*sizeof(short));
	S->lli_len = SIZE4;
	for(i=0; i<SIZE4; i++) S->s[i] = 128;
	ichck(4, sizeof(S->lli_len), sizeof(st4), "test4-1 NG\n");
	for(i=0; i<SIZE4; i++)
	{
		if(S->s[i] !=128)
		{
			sichck(4, 128, S->s[i], "test4-2 NG\n");
			break;
		}
	}
	free(S);
	
	Pst5 = (st5*) malloc(sizeof(st5)+SIZE1*sizeof(short));
	Pst5->st.int_len = 10;
	for(i=0; i<SIZE1; i++) Pst5->s[i] = 256;
	for(i=0; i<SIZE1; i++)
	{
		if(Pst5->s[i] != 256)
		{
			sichck(5, Pst5->s[i], 256, "test5-1 NG\n");
			break;
		}
	}
	ichck(5, sizeof(Pst5->st), sizeof(st5), "test5-2 NG\n");
	free(Pst5);
	
	Pst6 = (st6*) malloc(sizeof(st6)+SIZE4*sizeof(int));
	Pst6->int_len = SIZE4;
	for(i=0; i<SIZE4; i++) Pst6->i[i] = 4234;
	for(i=0; i<SIZE4; i++)
	{
		if(Pst6->i[i] != 4234)
		{
			ichck(6, 4234, Pst6->i[i], "test6-1 NG\n");
			break;
		}
	}
	ichck(6, sizeof(Pst6->int_len), sizeof(st6), "test6-2 NG\n");
	free(Pst6);
	
	Pst7 = (st7*) malloc(sizeof(st7) + SIZE2*sizeof(int)*2);
	Pst7->int_len = 2*SIZE2;
	for(i=0; i<SIZE2; i++)
	{
		Pst7->i1[i] = 1;
		Pst7->i2[i] = 65536;
	}
	ichck(7, 2*SIZE2, Pst7->int_len, "test7-1 NG\n");
	
	for(i=0; i<SIZE2; i++)
	{
		if(Pst7->i2[i] != 65536)
		{
			ichck(7, 65536, Pst7->i2[i], "test7-2 NG\n");
			break;
		}
	}
	ichck(7, sizeof(Pst7->int_len), sizeof(st7), "test7-3 NG\n");
	free(Pst7);
	
	Pst8 = (st8*) malloc(sizeof(st8) + sizeof(long)*SIZE2);
	Pst8->l_len = SIZE2;
	Pst8->st[8].int_len = SIZE2;
	
	for(i=0; i<SIZE2; i++) Pst8->l[i] = 2147483647;
	
	for(i=0; i<SIZE2; i++)
	{
		if(Pst8->l[i] != 2147483647)
		{
			lichck(8, 2147483647, Pst8->l[i], "test8-1 NG\n");
			break;
		}
	}
	ichck(8, sizeof(Pst8->l_len)+sizeof(Pst8->st), sizeof(st8), "test8-2 NG\n");
	free(Pst8);
	
	Pst9 = (st9*) malloc(sizeof(st9) + sizeof(long)*SIZE3);
	Pst9->l_len = SIZE3;
	Pst9->st[8].int_len = SIZE3;
	
	for(i=0; i<SIZE3; i++) Pst9->l[i] = 2147483650;
	for(i=0; i<SIZE3; i++)
	{
		if(Pst9->l[i] != 2147483650)
		{
			lichck(9, 2147483650, Pst9->l[i], "test9-1 NG\n");
			break;
		}
	}
	ichck(9, sizeof(st9), sizeof(Pst9->l_len)+sizeof(Pst9->st), "test9-2 NG\n");
	free(Pst9);
	
	Pst10 = (st10*) malloc(sizeof(st10) + sizeof(float)*SIZE2);
	for(i=0;i<SIZE2;i++) Pst10->f[i]=1.75;
	for(i=0;i<SIZE2;i++)
	{
		if(Pst10->f[i] != 1.75)
		{
			fchck(10, 1.75, Pst10->f[i], 0.1, "test10-1 NG\n");
			break;
		}
	}
	ichck(10, 0, sizeof(st10), "test10-2 NG\n");
	free(Pst10);
	
	Pst11 = (st11*) malloc(sizeof(st11) + sizeof(long double)*SIZE1);
	strcpy(Pst11->char_len, "10");
	for(i=0;i<SIZE1;i++) Pst11->ld[i] = 1000000000;
	schck(11, "10", Pst11->char_len, "test11-1 NG\n");
	for(i=0;i<SIZE1;i++) 
	{
		if(Pst11->ld[i] != 1000000000)
		{
			printf("\t test10-2 NG\n");
			break;
		}
	}
	ichck(11, sizeof(long double), sizeof(st11), "test11-3 NG\n");
	free(Pst11);
	
	Pst12 = (st12*) malloc(sizeof(st12) + sizeof(long long int)*SIZE3);
	Pst12->b_num = false;
	for(i=0; i<SIZE3; i++) Pst12->lli[i] = 2147483647;
	for(i=0; i<SIZE3; i++)
	{
		if(Pst12->lli[i] != 2147483647)
		{
			llichck(12, 2147483647, Pst12->lli[i], "test12-1 NG\n");
			break;
		}
	}
	ichck(12, sizeof(long long int), sizeof(st12), "test12-2 NG\n");
	free(Pst12);
	
	Pst13 = (st13*) malloc(sizeof(st13) + sizeof(long long int)*SIZE4*2);
	
	for(i=0; i<SIZE4; i++)
	{
		Pst13->lli1[i] = i;
		Pst13->lli2[i] = i*2;
	}
	
	for(i=0; i<SIZE4; i++)
	{
		if(Pst13->lli2[i] != i*2)
		{
			lichck(13, i, Pst13->lli2[i], "test13-1 NG\n");
			break;
		}
	}
	ichck(13, 8, sizeof(st13), "test13-2 NG\n");
	free(Pst13);
	
	Pst14 = (st14*) malloc(sizeof(st14) + sizeof(_Complex)*SIZE3);
	for(i=0;i<SIZE3;i++) Pst14->com[i] = 1586.25f + 134.25fi;
	
	for(i=0;i<SIZE3;i++)
	{
		if( (crealf(Pst14->com[i]) != 1586.25 ) || (cimagf(Pst14->com[i]) != 134.25))
		{
			fchck(14, 1586.25, creal(Pst14->com[i]), 0.1, "test14-1 NG\n");
			fchck(14, 134.25, cimag(Pst14->com[i]), 0.1, "test14-2 NG\n");
			break;
		}
		
	}
	free(Pst14);
	
	
	Pst15 = (st15*) malloc(sizeof(st15) + sizeof(_Bool)*SIZE1);
	strcpy(Pst15->char_len, "10");
	for(i=0;i<SIZE1;i++) Pst15->b[i] = true;
	for(i=0;i<SIZE1;i++)
	{
		if(Pst15->b[i]!=true)
		{
			printf("test15-1 NG\n");
			break;
		}
	}
	ichck(15, sizeof(Pst15->char_len), sizeof(st15), "test15-2 NG\n");
	free(Pst15);
	
	Pst16 = (st16*) malloc(sizeof(st16) + sizeof(Pst16->pi)*SIZE1);
	Pst16->int_len = SIZE1;
	memset(Pst16->pi, sizeof(Pst16->pi)*SIZE1, 0);
	ichck(16, SIZE1, Pst16->int_len, "test16-1 NG\n");
	ichck(16, sizeof(int *), sizeof(st16), "test16-2 NG\n");
	free(Pst16);
	
	Pst17 = (st17*) malloc(sizeof(st17) + sizeof(st_uni)*SIZE3);
	Pst17->int_len = SIZE3;
	for(i=0; i<SIZE3; i++) Pst17->stu[i].short_var = 256;
	for(i=0; i<SIZE3; i++)
	{
		if(Pst17->stu[i].short_var != 256)
		{
			sichck(17, 256, Pst17->stu[i].short_var, "test17-1 NG\n");
			break;
		}
	}
	ichck(17, sizeof(int), sizeof(st17), "test17-2 NG\n");
	free(Pst17);
	
	Pst19 = (st19*) malloc(sizeof(st19) + sizeof(part)*SIZE2);
	Pst19->float_len = SIZE2;
	for(i=0;i<SIZE2;i++) Pst19->p[i].double_len = 123456.0;
	for(i=0;i<SIZE2;i++)
	{
		if(Pst19->p[i].double_len != 123456.0)
		{
			dchck(19, 123456.0, Pst19->p[i].double_len, 0.1, "test19-1 NG\n");
			break;
		}
	}
	ichck(19, 8, sizeof(st19), "test19-2 NG\n");
	free(Pst19);
	
	Pst20 = (st20*) malloc(sizeof(st20) + sizeof(st6)*SIZE4);
	Pst20->int_len = SIZE4;
	for(i=0; i++; i<SIZE4) Pst20->st[i].int_len = 65535;
	free(Pst20);
	
	header("GNU Array Zero","Gnu Arrays of Legth Zero test End");
	
	return 0;
}

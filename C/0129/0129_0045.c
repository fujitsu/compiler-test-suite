#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#define SF	123
#define CF	111

short sf(){short s;s=SF;return s;}
char cf (void){char  c;c=CF;return c;}

int reg1 (int a, int b, int c, int d, int e, int f, int g, int I)
{ if(I!=SF)printf("reg1 ng\n"); return 0; }

int reg2 (char a, char b, char c, char d, char e, char f, char g, char I)
{ if(I!=SF)printf("reg2 ng\n"); return 0; }

int reg3 (short a, short b, short c, short d, short e, short f, short g, short I)
{ if(I!=SF)printf("reg3 ng\n"); return 0; }

int reg4 (int a, int b, int c, int d, int e, int f, int g, int I)
{ if(I!=CF)printf("reg4 ng\n"); return 0; }

int reg5 (char a, char b, char c, char d, char e, char f, char g, char I)
{ if(I!=CF)printf("reg5 ng\n"); return 0; }

int reg6 (short a, short b, short c, short d, short e, short f, short g, short I)
{ if(I!=CF)printf("reg6 ng\n"); return 0; }
		
int stk1 (int a, int b, int c, int d, int e, int f, int g, int i, int j, int k, int L)
{ if(L!=SF)printf("stk1 ng\n"); return 0; }

int stk2 (char a, char b, char c, char d, char e, char f, char g, char i, char j, char k, char L)
{ if(L!=SF)printf("stk2 ng\n"); return 0; }

int stk3 (short a, short b, short c, short d, short e, short f, short g, short i, short j, short k, short L)
{ if(L!=SF)printf("stk3 ng\n"); return 0; }

int stk4 (int a, int b, int c, int d, int e, int f, int g, int i, int j, int k, int L)
{ if(L!=CF)printf("stk4 ng\n"); return 0; }

int stk5 (char a, char b, char c, char d, char e, char f, char g, char i, char j, char k, char L)
{ if(L!=CF)printf("stk5 ng\n"); return 0; }

int stk6 (short a, short b, short c, short d, short e, short f, short g, short i, short j, short k, short L)
{ if(L!=CF)printf("stk6 ng\n"); return 0; }

int test (void)
{
  short sf();
  char  cf();

  reg1(1,1,1,1,1,1,1,sf());
  reg2(1,1,1,1,1,1,1,sf());
  reg3(1,1,1,1,1,1,1,sf());

  reg4(1,1,1,1,1,1,1,cf());
  reg5(1,1,1,1,1,1,1,cf());
  reg6(1,1,1,1,1,1,1,cf());

  stk1(1,1,1,1,1,1,1,1,1,1,sf());
  stk2(1,1,1,1,1,1,1,1,1,1,sf());
  stk3(1,1,1,1,1,1,1,1,1,1,sf());

  stk4(1,1,1,1,1,1,1,1,1,1,cf());
  stk5(1,1,1,1,1,1,1,1,1,1,cf());
  stk6(1,1,1,1,1,1,1,1,1,1,cf());
  return 0;
}

int main (void)
{
  test();
  exit (0);
}

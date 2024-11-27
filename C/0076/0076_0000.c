#include <stdio.h>


struct TAG1 {
  char c;
};

struct TAG4 {
  int  i;
};

struct TAG8 {
  long long j;
};

struct TAG16 {
  int i[4];
};

void bfun(signed char i,int j)
{
  if( i != -1 )  puts("NG1");
  if( j != 1 ) puts("NG0");
}

void sfun(signed short i,int j)
{
  if( i != -1 )  puts("NG2");
  if( j != 1 ) puts("NG0");
}

void ifun(signed int i,int j)
{
  if( i != -1 )  puts("NG3");
  if( j != 1 ) puts("NG0");
}

void jfun(signed long long i,int j)
{
  if( i != -1 )  puts("NG4");
  if( j != 1 ) puts("NG0");
}

void bprc(unsigned char i,int j)
{
  if(  i != (unsigned char)-1 )  puts("NG5");
  if( j != 1 ) puts("NG0");
}

void sprc(unsigned short i,int j)
{
  if( i != (unsigned short)-1 )  puts("NG6");
  if( j != 1 ) puts("NG0");
}

void lprc(unsigned int i,int j)
{
  if( i != -1 )  puts("NG7");
  if( j != 1 ) puts("NG0");
}

void jprc(unsigned long long i,int j)
{
  if( i != -1 )  puts("NG8");
  if( j != 1 ) puts("NG0");
}

void ffun(float i,int j)
{
  if( i != -1 )  puts("NG9");
  if( j != 1 ) puts("NG0");
}

void dfun(double i,int j)
{
  if( i != -1 )  puts("NG10");
  if( j != 1 ) puts("NG0");
}

void ldfun(long double i,int j)
{
  if( i != -1 )  puts("NG11");
  if( j != 1 ) puts("NG0");
}

void st1fun(struct TAG1 st1,int j)
{
  if( st1.c != -1 ) puts("NG12");
  if( j != 1 ) puts("NG0");
}

void st4fun(struct TAG4 st4,int j)
{
  if( st4.i != -1 ) puts("NG13");
  if( j != 1 ) puts("NG0");
}

void st8fun(struct TAG8  st8,int j)
{
  if( st8.j != -1 ) puts("NG14");
  if( j != 1 ) puts("NG0");
}

void st16fun(struct TAG16  st16,int j)
{
  if( st16.i[0] != -1 ) puts("NG15");
  if( j != 1 ) puts("NG0");
}
int main()
{
  struct TAG1 st1 = { -1 };
  struct TAG4 st4 = { -1 };
  struct TAG8 st8 = { -1 };
  struct TAG16 st16 = { -1, -1, -1, -1};

  bfun(-1,1);
  bprc(-1,1);
  sfun(-1,1);
  sprc(-1,1);
  ifun(-1,1);
  jfun(-1,1);
  jprc(-1,1);
  dfun(-1,1);
  ffun(-1,1);
  ldfun(-1,1);
  lprc(-1,1);
  st1fun(st1,1);
  st4fun(st4,1);
  st8fun(st8,1);
  st16fun(st16,1);
  puts("PASS");
}

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

signed char     bfun()
{
  return -1;
}

signed short    sfun()
{
  return -1;
}

signed int      ifun()
{
  return -1;
}

signed long long jfun()
{
  return -1;
}

unsigned char     bprc()
{
  return -1;
}

unsigned short    sprc()
{
  return -1;
}

unsigned int      iprc()
{
  return -1;
}

unsigned long long jprc()
{
  return -1;
}

float   ffun() 
{
  return -1;
}

double   dfun() 
{
  return -1;
}

long double  ldfun() 
{
  return -1;
}

struct TAG1  st1fun()
{
   struct TAG1 st1;
   st1.c = -1;
   return st1;
}

struct TAG4  st4fun()
{
   struct TAG4 st4;
   st4.i = -1;
   return st4;
}

struct TAG8  st8fun()
{
   struct TAG8 st8;
   st8.j = -1;
   return st8;
}

struct TAG16  st16fun()
{
   struct TAG16 st16;
   st16.i[0] = -1;
   st16.i[1] = -1;
   st16.i[2] = -1;
   st16.i[3] = -1;
   return st16;
}
int main()
{
  if(  bfun() != -1 )  puts("NG1");
  if(  bprc() != (unsigned char)-1 )  puts("NG2");
  if(  sfun() != -1 )  puts("NG3");
  if(  sprc() != (unsigned short)-1 )  puts("NG4");
  if(  ifun() != -1 )  puts("NG5");
  if(  iprc() != -1 )  puts("NG6");
  if(  jfun() != -1 )  puts("NG7");
  if(  jprc() != -1 )  puts("NG8");
  if(  dfun() != -1 )  puts("NG9");
  if(  ffun() != -1 )  puts("NG10");
  if(  ldfun() != -1 )  puts("NG11");
  if(  st1fun().c != -1 )  puts("NG12");
  if(  st4fun().i != -1 )  puts("NG13");
  if(  st8fun().j != -1 )  puts("NG14");
  if(  st16fun().i[0] != -1 )  puts("NG15");
  puts("PASS");
}

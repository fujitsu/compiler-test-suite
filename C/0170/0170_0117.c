#include <stdio.h>
int sub4();
int sub3();
int sub2();
int sub1();

extern char ret1();
extern unsigned char ret2();
extern short ret3();
extern unsigned short ret4();
int main()
{
  sub1();
  sub2();
  sub3();
  sub4();
}
int sub1()
{
  int i,j=0;
  char L,ret1();
  L=ret1();
  for(i=L;i<20;i++)
    {
      j++;
    }
    if(i==20&&j==10)
  printf("ok\n");
  else
  printf("ng,i=%d(20),j=%d(10)\n",i,j);
}
int sub2()
{
  int i,j=0;
  unsigned char L,ret2();
  L=ret2();
  for(i=L;i<20;i++)
    {
      j++;
    }
    if(i==20&&j==10)
  printf("ok\n");
  else
  printf("ng,i=%d(20),j=%d(10)\n",i,j);
}
int sub3()
{
  int i,j=0;
  short L,ret3();
  L=ret3();
  for(i=L;i<20;i++)
    {
      j++;
    }
    if(i==20&&j==10)
  printf("ok\n");
  else
  printf("ng,i=%d(20),j=%d(10)\n",i,j);
}
int sub4()
{
  int i,j=0;
  short unsigned L,ret4();
  L=ret4();
  for(i=L;i<20;i++)
    {
      j++;
    }
    if(i==20&&j==10)
  printf("ok\n");
  else
  printf("ng,i=%d(20),j=%d(10)\n",i,j);
}
char ret1()
{
  char i;
  i=10;
  return i;
}
unsigned char ret2()
{
  unsigned char i;
  i=10;
  return i;
}
short ret3()
{
  short i;
  i=10;
  return i;
}
unsigned short ret4()
{
  unsigned short i;
  i=10;
  return i;
}



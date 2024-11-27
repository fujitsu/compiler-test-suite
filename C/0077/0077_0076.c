#include <stdio.h>

int test0()
{
  int *p ;
  p = 0;
  return *p;
}

int test1()
{
  int *p ;
  p = (int *)4;
  return *p;
}

int test2(int i)
{
  int *p ;
  p = 0;
  return p[i];
}

int test3(int i)
{
  int *p ;
  p = (int *)4;
  return p[i];
}

int test4(int i)
{
  int *p ;
  p = 0;
  return p[i+1];
}

int test5(int i)
{
  int *p ;
  p = (int *)4;
  return p[i+1];
}

int x;
int main()
{
  if( x != 0 ) {
    test0();
    test1();
    test2(1);
    test3(1);
    test4(1);
    test5(1);
  }

  puts("PASS");
}

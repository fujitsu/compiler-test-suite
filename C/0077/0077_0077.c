#include <stdio.h>

void test0()
{
  int *p ;
  p = 0;
  *p = 1;
}

void test1()
{
  int *p ;
  p = (int *)4;
  *p = 1;
}

void test2(int i)
{
  int *p ;
  p = 0;
  p[i] = 1;
}

void test3(int i)
{
  int *p ;
  p = (int *)4;
  p[i] = 1;
}

void test4(int i)
{
  int *p ;
  p = 0;
  p[i+1] = 1;
}

void test5(int i)
{
  int *p ;
  p = (int *)4;
  p[i+1] = 1;
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

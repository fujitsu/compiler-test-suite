#include <stdio.h>

void *test0()
{
    return (void *)&puts;
}

void *test1()
{
    return (void *)&test0;
}

int  test2(int i)
{
  switch( i ) {
  case 0: return 0;
  case 1: return 1;
  case 2: return 2;
  case 3: return 3;
  case 4: return 4;
  case 5: return 5;
  case 6: return 6;
  case 7: return 7;
  case 8: return 8;
  case 9: return 9;
  default : -1;
  }
}

const int *test3()
{
  const static int i = 1;
  return &i;
}

static int i = 1;

int *test5()
{
  return &i;
}

static int j;

int *test6()
{
  return &j;
}

int x;

void *test7()
{
  return &x;
}
int main()
{
  int *p;
  void (*m)() = (void (*)())test0();
  if( &test0 != test1() ) m("NG1");
  if( test2(1) != 1 ) m("NG2");
  p = (int *)test3();
  if( *p != 1 ) m("NG3");
  p = test5();
  if( *p != 1 ) m("NG5");
  j=1;
  p = test6();
  if( *p != 1 ) m("NG6");
  x=1;
  p = test7();
  if( *p != 1 ) m("NG7");
  m("PASS");
}

#include <stdio.h>



static void *test0(void)
{
    return (void *)&puts;
}


void *test1(void)
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


int *gpi = &i;
int *gpj = &j;
int *gpx = &x;
static int *sgpi = &i;
static int *sgpj = &j;
static int *sgpx = &x;
const  int *cgpi = &i;
const  int *cgpj = &j;
const  int *cgpx = &x;

void  *(*gpe)(void) = &test1;
void  *(*gpp)(void) = &test0;

static void test_init()
{
  if( gpi != &i ) puts("NG 1");
  if( gpj != &j ) puts("NG 2");
  if( gpx != &x ) puts("NG 3");
  if( sgpi != &i ) puts("NG 4");
  if( sgpj != &j ) puts("NG 5");
  if( sgpx != &x ) puts("NG 6");
  if( cgpi != &i ) puts("NG 7");
  if( cgpj != &j ) puts("NG 8");
  if( cgpx != &x ) puts("NG 9");

  if( gpe != &test1 ) puts("NG 10");
  if( gpp != &test0 ) puts("NG 11");
}

int main()
{
  int *p;
  void (*m)() = (void *)test0();
  test_init();
  if( (void *)&test0 != (void *)test1() ) m("NG1");
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
  m("OK");
}

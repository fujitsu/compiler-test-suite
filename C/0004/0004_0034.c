#include <stdio.h>
static void init_d(int *i1, int *i2);
#include <stdio.h>

static int test1( int i,int j)
{
  if (i==j)
    return 1;
  else
    return 0;
}

static int test2( int i,int j)
{
  int ires;

  if (i==j)
    ires = 1;
  else
    ires = 0;
  return(ires);
}

static int test3( int i,int j)
{
  int ires;

  if (i==j) {
    ires = 0;
    return 1;
  }
  else {
    ires = 0;
    return 0;
  }
}

static int test1(int i, int j);
static int test2(int i, int j);
static int test3(int i, int j);
int main() {
  int i,j;
  init_d(&i,&j);
  printf("test start\n");
  if (!test1(i,j))
    printf("test NG\n");
  if (!test2(i,j))
    printf("test NG\n");
  if (!test3(i,j))
    printf("test NG\n");
  printf("test OK\n");
  printf("test end\n");
}

static void init_d(int *i1,int *i2)
{
  *i1=3;
  *i2=3;
}

#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>

static void test1();
static void test2();
static void test3();
static void test4();
static void test5();
static void test6();
static void test7();
int main() {
  printf("test start\n");
  test1();
  test2();
  test3();
  test4();
  test5();
  test6();
  test7();
  printf("test OK\n");
  printf("test end\n");
}

static void init_d(int *i1,int *i2)
{
  *i1=3;
  *i2=3;
}

static void init_d2(int *i1,int *i2)
{
  *i1=3;
  *i2=2;
}

static void init_d3(long long int *i1, long long int *i2)
{
  *i1=4;
  *i2=4;
}


#define subroutine2(i) subroutine1((i))

static int subroutine1(int i)
{
  int *p;
  p = &i;
  if (p)
    *p = 2;
  return (*p)*i;
}

static void test1()
{
  int i1,i2;
  int ires;

  init_d(&i1,&i2);
  if (subroutine1(i1)==subroutine2(i2))
    ires = 0;
  else
    ires = 1;
  if (ires)
    printf("test1 NG\n");
}

static void test2()
{
  int i1,i2;
  int ires;

  init_d(&i1,&i2);
  if (i1-i2)
    ires = 1;
  else
    ires = 0;
  if (ires)
    printf("test2 NG\n");
}

static void test3()
{
  int i1,i2;
  int ires;

  init_d2(&i1,&i2);
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  if (*((short int *)&i1+1) == *((short int *)&i2+1))
    ires = 0;
  else
    ires = 1;
#else
  if (*(short int *)&i1 == *(short int *)&i2)
    ires = 0;
  else
    ires = 1;
#endif
  if (ires)
    printf("test3 NG\n");
}

static void test4()
{
  int i1,i2;
  int ires1, ires2;

  init_d(&i1,&i2);
  if (i1==i2)
    ires1 = ires2 = 0;
  else
    ires1 = ires2 = 1;
  if (ires1)
    printf("test4 NG\n");
}

static void test5()
{
  int i1,i2;
  int ires1, ires2;

  init_d(&i1,&i2);
  if (i1==i2)
    ires1 = ires2 = 0;
  else
    ires1 = ires2 = 1;
  if (ires1 && ires2)
    printf("test5 NG\n");
}

static void test6()
{
  long long int i1,i2;
  long long int ires;

  init_d3(&i1,&i2);
  if (*(short int *)&i1 == *(short int *)&i2)
    ires = 0;
  else
    ires = 1;
  if (ires)
    printf("test6 NG\n");
}

static void test7()
{
  long long int i1,i2;
  long long int *ires;

  ires=(long long int *)malloc(sizeof(long long int));
  init_d3(&i1,&i2);
  if (*(short int *)&i1 == *(short int *)&i2)
    *ires = 0;
  else
    *ires = 1;
  if (*ires)
    printf("test7 NG\n");

  free(ires);
}

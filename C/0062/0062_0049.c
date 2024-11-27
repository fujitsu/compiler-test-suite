#include "stdio.h"

static void test1(int total);
static void test2(int total);
static void test3(int total);
int main()
{
  int total=0;
  test1(total);
  test2(total);
  test3(total);
}

static void test1(int total)
{
  int a[100];
  int i;


  for (i=0; i<100; i++) {
    a[i] = i;
  }

  for (i=0; i<100; i++) {
    total = total + a[i];
  }

  printf("### TEST 1 ###\n");
  printf("OK\n");
}

static void test2(int total)
{
  int a[100];
  int i;


  for (i=0; i<100; i++) {
    a[i] = i;
  }

  for (i=0; i<100; i++) {
    total = total + a[i];
  }

  printf("### TEST 2 ###\n");
  printf("OK\n");
}

static void test3(int total)
{
  int a[100];
  int i;


  for (i=0; i<100; i++) {
    a[i] = i;
  }

  for (i=0; i<100; i++) {
    total = total + a[i];
  }

  printf("### TEST 3 ###\n");
  printf("OK\n");
}

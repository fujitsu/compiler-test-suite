#include "stdio.h"

static void test1(void);
static void test2(void);
static void test3(void);
static void test4(void);
int main(){
  test1();
  test2();
  test3();
  test4();
}

static void test1(void)
{
  int p[100];
  int a[100];
  int res=100;
  int i;
  int total=0;

  for (i=0; i<100; i++) {
    a[i] = 0;
    p[i] = 1;
  }


  for (i=0; i<100; i+=1) {
    a[i] = p[i];
  }


  for (i=0; i<100; i+=1) {
    total = total + a[i];
  }

  printf("### TEST 1 ###\n");
  if (total == res) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

static void test2(void)
{
  int p[100];
  int a[100];
  int res=100;
  int i;
  int total=0;

  for (i=0; i<100; i++) {
    a[i] = 0;
    p[i] = 1;
  }


  for (i=0; i<100; i+=1) {
    a[i] = p[i];
  }


  for (i=0; i<100; i+=1) {
    total = total + a[i];
  }

  printf("### TEST 2 ###\n");
  if (total == res) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

static void test3(void)
{
  int p[100];
  int a[100];
  int res=100;
  int i;
  int total=0;

  for (i=0; i<100; i++) {
    a[i] = 0;
    p[i] = 1;
  }

  i=0;

  while (i<100) {
    a[i] = p[i];
    i = i + 1;
  }

  i=0;

  while (i<100) {
    total = total + a[i];
    i = i + 1;
  }

  printf("### TEST 3 ###\n");
  if (total == res) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

static void test4(void)
{
  int p[100];
  int a[100];
  int res=100;
  int i;
  int total=0;

  for (i=0; i<100; i++) {
    a[i] = 0;
    p[i] = 1;
  }

  i=0;

  while (i<100) {
    a[i] = p[i];
    i = i + 1;
  }

  i=0;

  while (i<100) {
    total = total + a[i];
    i = i + 1;
  }

  printf("### TEST 4 ###\n");
  if (total == res) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}



















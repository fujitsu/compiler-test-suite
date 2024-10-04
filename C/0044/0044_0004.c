#include <stdio.h>

struct test01 {
  char dummy;
  short volatile array[10];
} __attribute__((aligned(1), packed));

struct test02 {
  char dummy;
  unsigned short volatile array[10];
} __attribute__((aligned(1), packed));

struct test03 {
  char dummy;
  int volatile array[10];
} __attribute__((aligned(1), packed));

struct test04 {
  char dummy;
  unsigned int volatile array[10];
} __attribute__((aligned(1), packed));

struct test05 {
  char dummy;
  long volatile array[10];
} __attribute__((aligned(1), packed));

struct test06 {
  char dummy;
  unsigned long volatile array[10];
} __attribute__((aligned(1), packed));

struct test07 {
  char dummy;
  long long volatile array[10];
} __attribute__((aligned(1), packed));

struct test08 {
  char dummy;
  unsigned long long volatile array[10];
} __attribute__((aligned(1), packed));

struct test09 {
  char dummy;
  float volatile array[10];
} __attribute__((aligned(1), packed));

struct test10 {
  char dummy;
  double volatile array[10];
} __attribute__((aligned(1), packed));

struct test11 {
  char dummy;
  long double volatile array[10];
} __attribute__((aligned(1), packed));

struct test12 {
  char dummy;
  struct test12a { long mem; } volatile array[10];
} __attribute__((aligned(1), packed));

struct test_ok {
  long dummy;
  long volatile array[10];
} __attribute__((aligned(1), packed));

short func01(short a)
{
  struct test01 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

unsigned short func02(unsigned short a)
{
  struct test02 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

int func03(int a)
{
  struct test03 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

unsigned int func04(unsigned int a)
{
  struct test04 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

long func05(long a)
{
  struct test05 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

unsigned long func06(unsigned long a)
{
  struct test06 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

long long func07(long long a)
{
  struct test07 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

unsigned long long func08(unsigned long long a)
{
  struct test08 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

float func09(float a)
{
  struct test09 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

double func10(double a)
{
  struct test10 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

long double func11(long double a)
{
  struct test11 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

struct test12a func12(struct test12a a)
{
  struct test12 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

long func_ok(long a)
{
  struct test_ok obj;

  obj.array[3] = a;

  return obj.array[3];
}

int main()
{
  printf("test start\n");
  if (func01(5) != 5) {
    printf(" 01 NG\n");
  }
  if (func02(5) != 5) {
    printf(" 02 NG\n");
  }
  if (func03(5) != 5) {
    printf(" 03 NG\n");
  }
  if (func04(5U) != 5U) {
    printf(" 04 NG\n");
  }
  if (func05(5L) != 5L) {
    printf(" 05 NG\n");
  }
  if (func06(5LU) != 5LU) {
    printf(" 06 NG\n");
  }
  if (func07(5LL) != 5LL) {
    printf(" 07 NG\n");
  }
  if (func08(5LLU) != 5LLU) {
    printf(" 08 NG\n");
  }
  if (func09(5.0F) != 5.0F) {
    printf(" 09 NG\n");
  }
  if (func10(5.0) != 5.0) {
    printf(" 10 NG\n");
  }
  if (func11(5.0L) != 5.0L) {
    printf(" 11 NG\n");
  }
  {
    struct test12a obj = { 5L };
    if (func12(obj).mem != 5L) {
      printf(" 12 NG\n");
    }
  }
  if (func_ok(5L) != 5L) {
    printf(" ok-test NG\n");
  }
  printf("test end\n");

  return 0;
}

#include <stdio.h>

#pragma pack(1)
struct test01 {
  char dummy;
  short volatile array[10];
};

struct test02 {
  char dummy;
  unsigned short volatile array[10];
};

struct test03 {
  char dummy;
  int volatile array[10];
};

struct test04 {
  char dummy;
  unsigned int volatile array[10];
};

struct test05 {
  char dummy;
  long volatile array[10];
};

struct test06 {
  char dummy;
  unsigned long volatile array[10];
};

struct test07 {
  char dummy;
  long long volatile array[10];
};

struct test08 {
  char dummy;
  unsigned long long volatile array[10];
};

struct test09 {
  char dummy;
  float volatile array[10];
};

struct test10 {
  char dummy;
  double volatile array[10];
};

struct test11 {
  char dummy;
  long double volatile array[10];
};

struct test12 {
  char dummy;
  struct test12a { long mem; } volatile array[10];
};

struct test_ok {
  long dummy;
  long volatile array[10];
};

short func01(short a)
{
  struct test01 obj = { 0 };

  obj.array[3] = a;

  return obj.array[3];
}

unsigned short func02(unsigned short a)
{
  struct test02 obj = { 0 };

  (0,obj).array[3] = a;

  return (0,obj).array[3];
}

int func03(int a)
{
  struct test03 obj = { 0 }, *ptr = &obj;

  (*ptr).array[3] = a;

  return (*ptr).array[3];
}

unsigned int func04(unsigned int a)
{
  struct test04 obj1 = { 0 }, obj2 = { 0 };

  (a == 5 ? obj1 : obj2).array[3] = a;

  return (a == 5 ? obj1 : obj2).array[3];
}

long func05(long a)
{
  struct test05 obj1 = { 0 }, obj2 = { 0 };

  (obj1 = obj2).array[3] = a;

  return (obj1 = obj2).array[3];
}

unsigned long func06(unsigned long a)
{
  struct test06 obj = { 0 }, *ptr = &obj;

  ptr->array[3] = a;

  return ptr->array[3];
}

long long func07(long long a)
{
  struct test07 obj = { 0 }, *ptr1 = &obj, **ptr2 = &ptr1;

  (*ptr2)->array[3] = a;

  return (*ptr2)->array[3];
}

unsigned long long func08(unsigned long long a)
{
  struct test08 array[10] = { 0 }, *ptr = &array[5];

  (ptr++)->array[3] = a;

  return (ptr++)->array[3];
}

float func09(float a)
{
  struct test09 array[10] = { 0 }, *ptr = &array[5];

  (ptr--)->array[3] = a;

  return (ptr--)->array[3];
}

double func10(double a)
{
  struct test10 array[10] = { 0 }, *ptr = &array[5];

  (++ptr)->array[3] = a;

  return (++ptr)->array[3];
}

long double func11(long double a)
{
  struct test11 array[10] = { 0 }, *ptr = &array[5];

  (--ptr)->array[3] = a;

  return (--ptr)->array[3];
}

struct test12a func12(struct test12a a)
{
  struct test12 array[10] = { 0 }, *ptr = &array[5];

  (ptr + 2)->array[3] = a;

  return (ptr + 2)->array[3];
}

long func13(long a)
{
  struct test05 array[10] = { 0 }, *ptr = &array[5];

  (ptr - 2)->array[3] = a;

  return (ptr - 2)->array[3];
}

long func14(long a)
{
  struct test05 obj = { 0 }, *ptr = &obj;

  (0, ptr)->array[3] = a;

  return (0, ptr)->array[3];
}

long func15(long a)
{
  struct test05 obj1 = { 0 }, obj2 = { 0 }, *ptr1 = &obj1, *ptr2 = &obj2;

  (a == 5 ? ptr1 : ptr2)->array[3] = a;

  return (a == 5 ? ptr1 : ptr2)->array[3];  
}

long func16(long a)
{
  struct test05 obj = { 0 }, *ptr1, *ptr2 = &obj;

  (ptr1 = ptr2)->array[3] = a;

  return (ptr1 = ptr2)->array[3];
}

long func17(long a)
{
  struct test05 array[10] = { 0 }, *ptr = &array[5];

  (ptr += 2)->array[3] = a;

  return (ptr += 2)->array[3];
}

long func18(long a)
{
  struct test05 array[10] = { 0 }, *ptr = &array[5];

  (ptr -= 2)->array[3] = a;

  return (ptr -= 2)->array[3];
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
  if (func04(5U) == 5U) { 
    printf(" 04 NG\n");
  }
  if (func05(5L) == 5L) {
    printf(" 05 NG\n");
  }
  if (func06(5LU) != 5LU) {
    printf(" 06 NG\n");
  }
  if (func07(5LL) != 5LL) {
    printf(" 07 NG\n");
  }
  if (func08(5LLU) == 5LLU) {
    printf(" 08 NG\n");
  }
  if (func09(5.0F) == 5.0F) {
    printf(" 09 NG\n");
  }
  if (func10(5.0) == 5.0) {
    printf(" 10 NG\n");
  }
  if (func11(5.0L) == 5.0L) {
    printf(" 11 NG\n");
  }
  {
    struct test12a obj = { 5L };
    if (func12(obj).mem != 5L) {
      printf(" 12 NG\n");
    }
  }
  if (func13(5L) != 5L) {
    printf(" 13 NG\n");
  }
  if (func14(5L) != 5L) {
    printf(" 14 NG\n");
  }
  if (func15(5L) != 5L) {
    printf(" 15 NG\n");
  }
  if (func16(5L) != 5L) {
    printf(" 16 NG\n");
  }
  if (func17(5L) == 5L) {
    printf(" 17 NG\n");
  }
  if (func18(5L) == 5L) {
    printf(" 18 NG\n");
  }
  if (func_ok(5L) != 5L) {
    printf(" ok-test NG\n");
  }
  printf("test end\n");

  return 0;
}

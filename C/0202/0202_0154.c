#include <stdio.h>

struct S1 {
  int second;
};

struct S2 {
  struct S1 *first;
};

struct S1 s11obj = { 100 };
struct S2 s12obj;

struct S2 test()
{
  s12obj.first = &s11obj;
  return s12obj;
}

void test_call()
{
  int data;

  data  = test().first->second;

  if (data == 100) {
    printf("test1: call: OK\n");
  } else {
    printf("test1: call: NG data=%d\n", data);
  }
}

struct S1 s211obj = { 200 };
struct S1 s212obj = { 300 };

void test_cond(int c)
{
  struct S2 s221obj;
  struct S2 s222obj;
  int data;

  s221obj.first = &s211obj;
  s222obj.first = &s212obj;

  data = (c ? s221obj: s222obj).first->second;

  if (data == 200) {
    printf("test2: cond: OK\n");
  } else {
    printf("test2: cond: NG data=%d\n", data);
  }
}

struct S1 s311obj = { 400 };
struct S1 s312obj = { 500 };

void test_assign()
{
  struct S2 s321obj;
  struct S2 s322obj;
  int data;

  s321obj.first = &s311obj;
  s322obj.first = &s312obj;

  data = (s321obj = s322obj).first->second;

  if (data == 500) {
    printf("test3: assign: OK\n");
  } else {
    printf("test3: assign: NG data=%d\n", data);
  }
}

struct S1 s411obj = { 600 };
struct S1 s412obj = { 700 };

void test_comma()
{
  struct S2 s421obj;
  struct S2 s422obj;
  int data;

  s421obj.first = &s411obj;
  s422obj.first = &s412obj;

  data = (s421obj, s422obj).first->second;

  if (data == 700) {
    printf("test4: comma: OK\n");
  } else {
    printf("test4: comma: NG data=%d\n", data);
  }
}

int main()
{
  test_call();
  test_cond(10);
  test_assign();
  test_comma();

  return 0;
}

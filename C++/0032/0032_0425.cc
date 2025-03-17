
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


struct S22: public S2 { };

struct S1 s211obj = { 200 };
struct S22 s2212obj;

void test_cast()
{
  int data;

  s2212obj.first = &s211obj;

  data = ((struct S2)s2212obj).first->second;

  if (data == 200) {
    printf("test2: cast: OK\n");
  } else {
    printf("test2: cast: NG data=%d\n", data);
  }
}

int main()
{
  test_call();
  test_cast();

  return 0;
}

#include <cstdio>

struct B
{
  B(char _c, int _i)
    : c(_c), i(_i) 
  {}

  bool check()
  {
    return ((c == '0' && i == 1) ? true: false);
  }

private:
  char c;
  int i;
};

static void func1(B b)
{
  if (b.check()) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}

void sub1()
{
  func1({ '0', 1 });
}

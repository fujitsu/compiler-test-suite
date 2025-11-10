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

static B func1()
{
  return { '0', 1 };
}

void sub1()
{
  B b = func1();
  if (b.check()) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}

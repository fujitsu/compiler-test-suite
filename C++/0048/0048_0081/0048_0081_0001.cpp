#include <cstdio>

class
{
public:
  int val;
} a;

void sub1()
{
  decltype(a) b;

  a.val = 10;
  b.val = 20;

  std::printf("%d %d\n", a.val, b.val);
}

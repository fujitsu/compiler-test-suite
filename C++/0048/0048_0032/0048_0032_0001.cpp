#include <cstdio>


class B1
{
public:
  explicit operator bool() const
  {
    return true;
  }

  explicit operator int() const
  {
    return 2;
  }
};

void sub1()
{
  B1 b1;
  if (!b1) {
    std::puts("NG1");
    return;
  }

  int val6 = static_cast<int>(b1);
  if (val6 != 2) {
    std::puts("NG2");
    return;
  }

  std::puts("OK");
}

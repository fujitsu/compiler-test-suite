#include <cstdio>


class B1
{
public:
  bool check()
  {
    return (id == 3);
  }

private:
  int id = 3;
};

void sub1()
{
  B1 b1;
  if (!b1.check()) {
    std::puts("NG");
    return;
  }

  std::puts("OK");
}

#include <cstdio>
#include "000.hpp"

int sub1()
{
  thread_local int id = 0;
  return ++id;
}

class B1
{
public:
  static B1& getInstance()
  {
    static B1 instance;
    return instance;
  }

  void show()
  {
    std::printf("B1::show\n");
  }
};

void sub2()
{
  B1 b1 = B1::getInstance();
  b1.show();
}

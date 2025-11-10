#include <cstdio>
#include "000.hpp"

class B1
{
public:
  class B2
  {
  public:
    int val;
    
    void print()
    {
      std::printf("Inner class: member function\n");
    }
  };
};

void sub1()
{
  int B1::B2::*p = &B1::B2::val;
  B1::B2 b12;
  b12.*p = 10;

  std::printf("%d\n", b12.val);
}

void sub2()
{
  void (B1::B2::*p)(void) = &B1::B2::print;
  B1::B2 b12;
  (b12.*p)();
}

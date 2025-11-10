#ifndef _B_HPP
#define _B_HPP

#include <cstdio>

template <typename T>
class B1
{
public:
  B1(T _val):
    val(_val) {}

  void show()
  {
    std::printf("%d\n", val);
  }

private:
  T val;
};

#endif

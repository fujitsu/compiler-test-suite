#include <cstdio>
#include "000.hpp"

enum struct Color
{
  Red = 1,
  Blue,
  Green
};

static void func1(Color c)
{
  std::printf("%d\n", c);
}

void sub1()
{
  func1(Color::Red);
  func1(Color::Blue);
  func1(Color::Green);
}

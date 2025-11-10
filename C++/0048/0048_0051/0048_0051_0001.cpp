#include <cstdio>
#include "000.hpp"

enum struct Color
{
  Red = 1,
  Blue,
  Green
};

void sub1()
{
  std::printf("%d\n", Color::Red);
  std::printf("%d\n", Color::Blue);
  std::printf("%d\n", Color::Green);
}

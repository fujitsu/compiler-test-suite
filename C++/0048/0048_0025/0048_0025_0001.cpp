#include <cstdio>

enum Color
{
  Red = 0, Green, Blue,
};

void sub1()
{
  std::printf("%d %d %d\n",
	      Color::Red, Color::Green, Color::Blue);
}

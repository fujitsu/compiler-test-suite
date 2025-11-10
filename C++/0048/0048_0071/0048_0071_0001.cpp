#include <cstdio>

struct B1_1 {
  char c[63];
  short s;
  double i;
};

struct B1_2 {};

void sub1()
{
  std::printf("%d %d %d %d %d %d\n",
	      alignof(char),
	      alignof(int),
	      alignof(double),
	      alignof(B1_1),
	      alignof(B1_2),
	      alignof(char *));
}

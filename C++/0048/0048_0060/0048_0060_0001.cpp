#include <cstdio>

template <typename T>
int toInt(T x) { return static_cast<int>(x); }

void sub1()
{
  enum { E1, E2 };

  std::printf("%d %d\n",
	      toInt(E2),
	      toInt<decltype(E2)>(E2));
}

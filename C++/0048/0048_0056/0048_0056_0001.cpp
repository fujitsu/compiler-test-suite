#include <cstdio>

template <int N>
struct X
{
  static const int c = 2;
};

template <>
struct X<0>
{
  using c = int;
};

template <typename T>
struct Y
{
  static const int c = 3;
};

static const int c = 4;

void sub1()
{
  std::printf("%d %d",
	      Y<X<1> >::c>::c>::c,
	      Y<X< 1>>::c>::c>::c);
  std::puts("");
}

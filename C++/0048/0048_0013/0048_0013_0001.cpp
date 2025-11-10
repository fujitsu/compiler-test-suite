#include <cstdio>
#include "000.hpp"

static long long int ack(int m, int n)
{
  return (m == 0 ?
	  n + 1:
	  (n == 0 ?
	   ack(m - 1, 1):
	   ack(m - 1, ack(m, n - 1))));
}

void sub1()
{
  std::printf("%d\n", ack(3, 1));
}

template <unsigned int m, unsigned int n>
struct Ack
{
  enum { value = Ack<m - 1, Ack<m, n - 1>::value>::value };
};

template <unsigned int m>
struct Ack<m, 0>
{
  enum { value = Ack<m - 1, 1>::value };
};

template <unsigned int n>
struct Ack<0, n>
{
  enum { value = n + 1 };
};

void sub2()
{
  std::printf("%d %d\n",
	      Ack<3, 3>::value,
	      Ack<3, 4>::value);
}

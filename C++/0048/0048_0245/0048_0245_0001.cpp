#include <cstdio>
#include <stdint.h>

template <int N>
unsigned int sum()
{
  return N + sum<N - 1>();
}

template <>
unsigned int sum<0>()
{
  return 0;
}

void sub1()
{
  std::printf("%u\n", sum<64>());
}

template <int N>
long long int factorial()
{
  return N * factorial<N - 1>();
}

template <>
long long int factorial<0>()
{
  return 1;
}

void sub2()
{
  std::printf("%lld\n", factorial<10>());
}

template <int n, int m>
class Pow
{
public:
  static const int64_t N = n * Pow<n, m - 1>::N;
};

template <int n>
class Pow<n, 1>
{
public:
  static const int64_t N = n;
};

void sub3()
{
  std::printf("%lld %lld %lld %lld\n",
	      Pow<2, 3>::N,
	      Pow<2, 30>::N,
	      Pow<3, 5>::N,
	      Pow<10, 5>::N);
}

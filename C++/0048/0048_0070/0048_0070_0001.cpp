#include <cstdio>

struct B1
{
  alignas(4) int i4, i4_n;
  alignas(8) int i8, i8_n;
  alignas(16) int i16, i16_n;
};

static int distance(void *a, void *b)
{
  return reinterpret_cast<long>(a) - reinterpret_cast<long>(b);
}

void sub1()
{
  B1 b1;
  
  std::printf("%d %d %d\n",
	      distance(&b1.i4_n, &b1.i4),
	      distance(&b1.i8_n, &b1.i8),
	      distance(&b1.i16_n, &b1.i16));
}

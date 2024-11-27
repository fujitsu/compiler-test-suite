#include <stdio.h>

#if defined(__SSE2__)

#include <emmintrin.h>

typedef union {
  __m128d simd;
  double dbl[2];
  unsigned long int ulong[2];
  unsigned int uint[4];
} union__m128d;

union__m128d a, b, c, d;

double dc = 0.0;

void test_mm_storel_pd()
{
  a.simd = _mm_set_pd(1.0, 2.0);
  b.simd = _mm_set_pd(3.0, 4.0);
  _mm_storel_pd(&dc, a.simd);
  _mm_storel_pd(&dc, b.simd);
  if (dc == 4.0)
    puts("OK");
  else
    puts("NG");
}

int main()
{
  test_mm_storel_pd();
  return 0;
}

#else

int main()
{
  puts("OK");
  return 0;
}

#endif


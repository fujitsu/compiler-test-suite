#if defined(__aarch64__)
#include <stdio.h>
int main()
{
  puts("OK\n");
  return 0;
}
#else
#include <stdio.h>
#include <emmintrin.h>

#if !defined(__HPC_ACE__) && !defined(__SSE2__)
#error Need macro __HPC_ACE__ or __SSE2__ to be defined.
#endif


typedef union {
  __m128d simd;
  double dbl[2];
  unsigned long int ulong[2];
  unsigned int uint[4];
} union__m128d;

union__m128d a, b, c, d;

#define A1 (1.0)
#define A2 (2.0)
#define B1 (3.0)
#define B2 (4.0)
#define C1 (5.0)
#define C2 (6.0)

void test_mm_setzero_pd()
{
  a.simd = _mm_setzero_pd();
  if ((a.dbl[1] == 0.0) && (a.dbl[0] == 0.0))
    puts("OK\n");
  else
    puts("NG\n");
}

int main()
{
  test_mm_setzero_pd();
  return 0;
}
#endif

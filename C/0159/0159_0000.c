#if defined(__aarch64__)
#include <stdio.h>
int main()
{
  puts("OK\n");
  return 0;
}
#else
#include <emmintrin.h>
#include <stdio.h>

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

#define ARITH(a, b) ((a) + (b))

void test_mm_add_pd()
{
  a.simd = _mm_set_pd(A1, A2);
  b.simd = _mm_set_pd(B1, B2);
  c.simd = _mm_add_pd(a.simd, b.simd);
  if ((c.dbl[1] == ARITH(A1, B1)) && (c.dbl[0] == ARITH(A2, B2)))
    puts("OK\n");
  else
    puts("NG\n");
}

int main()
{
  test_mm_add_pd();
  return 0;
}
#endif

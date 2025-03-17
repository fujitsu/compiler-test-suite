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

#define A1 (0xffffFFFFffffFFFFUL)
#define A2 (0x0000FFFFffffFFFFUL)
#define B1 (0xffff0000ffffFFFFUL)
#define B2 (0xffffFFFF0000FFFFUL)
#define C1 (0xffffFFFFffff0000UL)
#define C2 (0xff00ff00ff00ff00UL)

#define ARITH(a, b) ((a) ^ (b))

void test_mm_xor_pd()
{
  a.ulong[0] = A1, a.ulong[1] = A2;
  b.ulong[0] = B1, b.ulong[1] = B2;
  c.simd = _mm_xor_pd(a.simd, b.simd);
  if ((c.ulong[0] == ARITH(A1, B1)) && (c.ulong[1] == ARITH(A2, B2)))
    puts("OK\n");
  else
    puts("NG\n");
}

int main()
{
  test_mm_xor_pd();
  return 0;
}
#endif

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

union__m128d a, b, c, d1, d2;



#define A1 (1.0)
#define A2 (4.0)
#define B1 (2.0)
#define B2 (3.0)
#define C1 (2.0)
#define C2 (3.0)

#define D1 (0xffffffffffffffffUL)
#define D2 (0x0UL)

#define match(X, Y) ((X == Y) ? D1 : D2)

void test_mm_cmpeq_pd()
{
  a.simd  = _mm_set_pd(A1, A2);
  b.simd  = _mm_set_pd(B1, B2);
  c.simd  = _mm_set_pd(C1, C2);
  d1.simd = _mm_cmpeq_pd(a.simd, b.simd);
  d2.simd = _mm_cmpeq_pd(b.simd, c.simd);
  if (d1.ulong[1] == match(A1, B1) && d1.ulong[0] == match(A2, B2) &&
      d2.ulong[1] == match(B1, C1) && d2.ulong[0] == match(B2, C2))
    puts("OK\n");
  else
    puts("NG\n");
}

int main()
{
  test_mm_cmpeq_pd();
  return 0;
}
#endif

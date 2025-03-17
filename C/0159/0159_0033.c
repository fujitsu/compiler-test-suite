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
  __m128i simd;
  double dbl[2];
  unsigned long int ulong[2];
  unsigned int uint[4];
} union__m128i;

union__m128i a, b, c, d;

#define A1 (0xFFFFFFFF)
#define A2 (0x00000000)
#define A3 (0xFF00FF00)
#define A4 (0x00FF00FF)
#define B1 (0xF0F0F0F0)
#define B2 (0x11111111)
#define B3 (0x55555555)
#define B4 (0xAAAAAAAA)

#define ARITH(a, b) ((a) ^ (b))

void test_mm_xor_si128()
{
  a.simd = _mm_set_epi32(A1, A2, A3, A4);
  b.simd = _mm_set_epi32(B1, B2, B3, B4);
  c.simd = _mm_xor_si128(a.simd, b.simd);
  if (    (c.uint[3] == ARITH(A1, B1)) && (c.uint[2] == ARITH(A2, B2))
       && (c.uint[1] == ARITH(A3, B3)) && (c.uint[0] == ARITH(A4, B4)))
    puts("OK\n");
  else
    puts("NG\n");
}

int main()
{
  test_mm_xor_si128();
  return 0;
}
#endif

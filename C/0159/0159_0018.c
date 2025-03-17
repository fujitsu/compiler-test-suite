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

void test_mm_set_epi32()
{
  a.simd = _mm_set_epi32(A1, A2, A3, A4);
  b.simd = _mm_set_epi32(B1, B2, B3, B4);

  if ((a.uint[3] == A1) && (a.uint[2] == A2) &&
      (a.uint[1] == A3) && (a.uint[0] == A4) &&
      (b.uint[3] == B1) && (b.uint[2] == B2) &&
      (b.uint[1] == B3) && (b.uint[0] == B4))
    puts("OK\n");
  else
    puts("NG\n");
}

int main()
{
  test_mm_set_epi32();
  return 0;
}
#endif

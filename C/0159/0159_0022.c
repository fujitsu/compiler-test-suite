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

union__m128i a, b, c, d, e, f, g, h, i, j, k, l, m, n, o;

#define A1 (0xFFFFFFFF)
#define A2 (0x00000000)
#define A3 (0xFF00FF00)
#define A4 (0x00FF00FF)
#define B1 (0xF0F0F0F0)
#define B2 (0x11111111)
#define B3 (0x55555555)
#define B4 (0xAAAAAAAA)

void test_mm_shuffle_epi32()
{
  a.simd = _mm_set_epi32(A1, A2, A3, A4);
  b.simd = _mm_shuffle_epi32(a.simd, 0x00);
  c.simd = _mm_shuffle_epi32(a.simd, 0x55);
  d.simd = _mm_shuffle_epi32(a.simd, 0xaa);
  e.simd = _mm_shuffle_epi32(a.simd, 0xff);
  f.simd = _mm_shuffle_epi32(a.simd, 0x05);
  g.simd = _mm_shuffle_epi32(a.simd, 0x5A);
  h.simd = _mm_shuffle_epi32(a.simd, 0xAF);
  i.simd = _mm_shuffle_epi32(a.simd, 0xF0);
  j.simd = _mm_shuffle_epi32(a.simd, 0x42);
  k.simd = _mm_shuffle_epi32(a.simd, 0x74);
  l.simd = _mm_shuffle_epi32(a.simd, 0xE9);
  m.simd = _mm_shuffle_epi32(a.simd, 0xCE);
  n.simd = _mm_shuffle_epi32(a.simd, 0x4E);
  o.simd = _mm_shuffle_epi32(a.simd, 0xE4);
  if ((b.uint[3] == A4) && (b.uint[2] == A4) && (b.uint[1] == A4) && (b.uint[0] == A4) &&
      (c.uint[3] == A3) && (c.uint[2] == A3) && (c.uint[1] == A3) && (c.uint[0] == A3) &&
      (d.uint[3] == A2) && (d.uint[2] == A2) && (d.uint[1] == A2) && (d.uint[0] == A2) &&
      (e.uint[3] == A1) && (e.uint[2] == A1) && (e.uint[1] == A1) && (e.uint[0] == A1) &&
      (f.uint[3] == A4) && (f.uint[2] == A4) && (f.uint[1] == A3) && (f.uint[0] == A3) &&
      (g.uint[3] == A3) && (g.uint[2] == A3) && (g.uint[1] == A2) && (g.uint[0] == A2) &&
      (h.uint[3] == A2) && (h.uint[2] == A2) && (h.uint[1] == A1) && (h.uint[0] == A1) &&
      (i.uint[3] == A1) && (i.uint[2] == A1) && (i.uint[1] == A4) && (i.uint[0] == A4) &&
      (j.uint[3] == A3) && (j.uint[2] == A4) && (j.uint[1] == A4) && (j.uint[0] == A2) &&
      (k.uint[3] == A3) && (k.uint[2] == A1) && (k.uint[1] == A3) && (k.uint[0] == A4) &&
      (l.uint[3] == A1) && (l.uint[2] == A2) && (l.uint[1] == A2) && (l.uint[0] == A3) &&
      (m.uint[3] == A1) && (m.uint[2] == A4) && (m.uint[1] == A1) && (m.uint[0] == A2) &&
      (n.uint[3] == A3) && (n.uint[2] == A4) && (n.uint[1] == A1) && (n.uint[0] == A2) &&
      (o.uint[3] == A1) && (o.uint[2] == A2) && (o.uint[1] == A3) && (o.uint[0] == A4) )
    puts("OK\n");
  else {
    puts("NG\n");
    printf("a = %08x, %08x, %08x, %08x\n", a.uint[0], a.uint[1], a.uint[2], a.uint[3]);
    printf("b = %08x, %08x, %08x, %08x\n", b.uint[0], b.uint[1], b.uint[2], b.uint[3]);
    printf("c = %08x, %08x, %08x, %08x\n", c.uint[0], c.uint[1], c.uint[2], c.uint[3]);
    printf("d = %08x, %08x, %08x, %08x\n", d.uint[0], d.uint[1], d.uint[2], d.uint[3]);
    printf("e = %08x, %08x, %08x, %08x\n", e.uint[0], e.uint[1], e.uint[2], e.uint[3]);
    printf("f = %08x, %08x, %08x, %08x\n", f.uint[0], f.uint[1], f.uint[2], f.uint[3]);
    printf("g = %08x, %08x, %08x, %08x\n", g.uint[0], g.uint[1], g.uint[2], g.uint[3]);
    printf("h = %08x, %08x, %08x, %08x\n", h.uint[0], h.uint[1], h.uint[2], h.uint[3]);
    printf("i = %08x, %08x, %08x, %08x\n", i.uint[0], i.uint[1], i.uint[2], i.uint[3]);
    printf("j = %08x, %08x, %08x, %08x\n", j.uint[0], j.uint[1], j.uint[2], j.uint[3]);
    printf("k = %08x, %08x, %08x, %08x\n", k.uint[0], k.uint[1], k.uint[2], k.uint[3]);
    printf("l = %08x, %08x, %08x, %08x\n", l.uint[0], l.uint[1], l.uint[2], l.uint[3]);
    printf("m = %08x, %08x, %08x, %08x\n", m.uint[0], m.uint[1], m.uint[2], m.uint[3]);
    printf("n = %08x, %08x, %08x, %08x\n", n.uint[0], n.uint[1], n.uint[2], n.uint[3]);
    printf("o = %08x, %08x, %08x, %08x\n", o.uint[0], o.uint[1], o.uint[2], o.uint[3]);
  }
}

int main()
{
  test_mm_shuffle_epi32();
  return 0;
}
#endif

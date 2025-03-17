#include <stdio.h>
#if defined(__x86_64__) && defined(__GNUC__)
#include <emmintrin.h>

__m128i sll(__m128i a)
{
  a = _mm_slli_epi64(_mm_slli_epi64(a, 1), 2);
  return a;
}

__m128i srl(__m128i a)
{
  a = _mm_srli_epi64(_mm_srli_epi64(a, 1), 2);
  return a;
}

double aa[2];
int main()
{
  int *p = (int *)&aa;
  union { __m128i i;  __m128d d; } a;

  a.i = sll( _mm_set_epi32(1,2,3,4) );
  _mm_store_pd((double *)aa, a.d);
#if defined(__sparc)
  printf("%d %d %d %d\n", p[1], p[0], p[3], p[2]);
#else
  printf("%d %d %d %d\n", p[0], p[1], p[2], p[3]);
#endif

  a.i = srl( _mm_set_epi32(1,2,3,4) );
  _mm_store_pd((double *)aa, a.d);
#if defined(__sparc)
  printf("%d %d %d %d\n", p[1], p[0], p[3], p[2]);
#else
  printf("%d %d %d %d\n", p[0], p[1], p[2], p[3]);
#endif

}
#else
int main()
{
  printf("32 24 16 8\n");
  printf("1610612736 0 536870912 0\n");

}
#endif

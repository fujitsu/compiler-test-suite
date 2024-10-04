#include <stdio.h>

int main()
{
#if defined(__x86_64__)

  int sse = 0;
  int sse_math = 0;
  int sse2 = 0;
  int sse2_math = 0;
  int sse3 = 0;
  int sse4 = 0;
  int avx = 0;
  int avx2 = 0;

#if defined(__SSE__) && __SSE__ == 1
  sse = 1;
#endif
#if defined(__SSE_MATH__) && __SSE_MATH__ == 1
  sse_math = 1;
#endif
#if defined(__SSE2__) && __SSE2__ == 1
  sse2 = 1;
#endif
#if defined(__SSE2_MATH__) && __SSE2_MATH__ == 1
  sse2_math = 1;
#endif
#if defined(__SSE3__) && __SSE3__ == 1
  sse3 = 1;
#endif
#if defined(__SSE4__) && __SSE4__ == 1
  sse4 = 1;
#endif
#if defined(__AVX__) && __AVX__ == 1
  avx = 1;
#endif
#if defined(__AVX2__) && __AVX2__ == 1
  avx2 = 1;
#endif

  if (sse ==1 && sse_math == 1 && sse2 == 1 && sse2_math == 1) {
    printf("test OK\n");
  } else {
    printf("test NG\n");
  }
#ifdef disp_detail
  if (sse == 1) {
    printf("__SSE__\n");
  }
  if (sse_math == 1) {
    printf("__SSE_MATH__\n");
  }
  if (sse2 == 1) {
    printf("__SSE2__\n");
  }
  if (sse2_math == 1) {
    printf("__SSE2_MATH__\n");
  }
  if (sse3 == 1) {
    printf("__SSE3__\n");
  }
  if (sse4 == 1) {
    printf("__SSE4__\n");
  }
  if (avx == 1) {
    printf("__AVX__\n");
  }
  if (avx2 == 1) {
    printf("__AVX2__\n");
  }
#endif

#elif defined(__aarch64__)
  printf("test OK\n");
#else
#error cannot test!
#endif

  return 0;
}

#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <stdio.h>
#include <arm_sve.h>

void test(int i1, int i2, int i3, int i4, int i5, int i6, int i7, int i8,
          float r1, float r2, float r3, float r4, float r5, float r6, float r7, float r8,
          svint32_t a, svbool_t b32)
{
#pragma omp parallel default(none) shared(a, b32)
  {
#pragma omp master
    {
      printf("%d\n", svlasta(b32, a));
    }
  }
}

int main(int argc, char** argv)
{
  svbool_t b32 = svptrue_b32();
  svint32_t a = svdup_s32_x(b32, 1);
  test(1, 2, 3, 4, 5, 6, 7, 8,
       11, 12, 13, 14, 15, 16, 17, 18,
       a, b32);
  return 0;
}

#else

int main()
{
  printf("%d\n", 1);
}

#endif

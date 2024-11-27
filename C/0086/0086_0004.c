#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <stdio.h>
#include <arm_sve.h>

void test(svint32_t a, svbool_t b32)
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
  test(a, b32);
  return 0;
}

#else

int main()
{
  printf("%d\n", 1);
}

#endif

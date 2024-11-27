#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <stdio.h>
#include <arm_sve.h>

int main(int argc, char** argv)
{
  svint32_t a = svdup_s32_x(svptrue_b32(), 1);
#pragma omp parallel default(none) shared(a)
  {
#pragma omp master
  {
    printf("%d\n", svlasta(svptrue_b32(), a));
  }
  }
  return 0;
}

#else

int main()
{
  printf("%d\n", 1);
}

#endif

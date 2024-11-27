#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <stdio.h>
#include <arm_sve.h>

int main(int argc, char** argv)
{
  int i,j,k;
  svint32_t a = svdup_s32_x(svptrue_b32(), 1);
#pragma omp parallel for default(none) shared(a)
  for (i = 0; i < 1; i++) {
#pragma omp parallel for default(none) shared(a)
    for (j = 0; j < 1; j++) {
#pragma omp parallel for default(none) shared(a)
      for (k = 0; k < 1; k++) {
        printf("%d\n", svlasta(svptrue_b32(), a));
      }
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

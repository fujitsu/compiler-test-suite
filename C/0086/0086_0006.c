#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <stdio.h>
#include <arm_sve.h>

int main(int argc, char** argv)
{
  svbool_t b8  = svptrue_b8();
  svbool_t b16 = svptrue_b16();
  svbool_t b32 = svptrue_b32();
  svbool_t b64 = svptrue_b64();

#pragma omp parallel default(none) shared(b8,b16,b32,b64)
  {
#pragma omp master
  {
    printf("%8.8x\n", *(int *)&b8);
    printf("%8.8x\n", *(int *)&b16);
    printf("%8.8x\n", *(int *)&b32);
    printf("%8.8x\n", *(int *)&b64);
  }
  }
  return 0;
}

#else

int main()
{
  puts("ffffffff");
  puts("55555555");
  puts("11111111");
  puts("01010101");
}

#endif

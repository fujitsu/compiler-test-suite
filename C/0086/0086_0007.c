#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <stdio.h>
#include <arm_sve.h>

int main(int argc, char** argv)
{
  svbool_t b = svptrue_b8();

  svint8_t  i1 = svdup_s8_x(b, 1); 
  svint16_t i2 = svdup_s16_x(b, 2);
  svint32_t i4 = svdup_s32_x(b, 3);
  svint64_t i8 = svdup_s64_x(b, 4);

  svuint8_t  u1 = svdup_u8_x(b, 5);
  svuint16_t u2 = svdup_u16_x(b, 6);
  svuint32_t u4 = svdup_u32_x(b, 7);
  svuint64_t u8 = svdup_u64_x(b, 8);

  svfloat32_t r4 = svdup_f32_x(b, 10);
  svfloat64_t r8 = svdup_f64_x(b, 11);

#pragma omp parallel default(none) shared(i1,i2,i4,i8)
  {
#pragma omp master
  {
    printf("%d\n", svlasta(svptrue_b8(), i1));
    printf("%d\n", svlasta(svptrue_b16(), i2));
    printf("%d\n", svlasta(svptrue_b32(), i4));
    printf("%d\n", svlasta(svptrue_b64(), i8));
  }
  }
#pragma omp parallel default(none) shared(u1,u2,u4,u8)
  {
#pragma omp master
  {
    printf("%d\n", svlasta(svptrue_b8(), u1));
    printf("%d\n", svlasta(svptrue_b16(), u2));
    printf("%d\n", svlasta(svptrue_b32(), u4));
    printf("%d\n", svlasta(svptrue_b64(), u8));
  }
  }
#pragma omp parallel default(none) shared(r4,r8)
  {
#pragma omp master
  {
    printf("%g\n", svlasta(svptrue_b32(), r4));
    printf("%g\n", svlasta(svptrue_b64(), r8));
  }
  }
  return 0;
}

#else

int main()
{
  puts("1");
  puts("2");
  puts("3");
  puts("4");
  puts("5");
  puts("6");
  puts("7");
  puts("8");
  puts("10");
  puts("11");
}

#endif

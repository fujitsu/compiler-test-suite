#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <stdio.h>
#include <arm_sve.h>

const unsigned char input[256] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };

int main(int argc, char** argv)
{
  svbool_t b = svptrue_b8();

  svint8x3_t  i1 = svld3_s8(b, (void *)&input);
  svint16x3_t i2 = svld3_s16(b, (void *)&input);
  svint32x3_t i4 = svld3_s32(b, (void *)&input);
  svint64x3_t i8 = svld3_s64(b, (void *)&input);

  svuint8x3_t  u1 = svld3_u8(b, (void *)&input);
  svuint16x3_t u2 = svld3_u16(b, (void *)&input);
  svuint32x3_t u4 = svld3_u32(b, (void *)&input);
  svuint64x3_t u8 = svld3_u64(b, (void *)&input);

  svfloat32x3_t r4 = svld3_f32(b, (void *)&input);
  svfloat64x3_t r8 = svld3_f64(b, (void *)&input);

#pragma omp parallel default(none) shared(i1,i2,i4,i8)
  {
#pragma omp master
  {
    printf("%llx\n", *(long *)&i1);
    printf("%llx\n", *(long *)&i2);
    printf("%llx\n", *(long *)&i4);
    printf("%llx\n", *(long *)&i8);
  }
  }
#pragma omp parallel default(none) shared(u1,u2,u4,u8)
  {
#pragma omp master
  {
    printf("%llx\n", *(long *)&u1);
    printf("%llx\n", *(long *)&u2);
    printf("%llx\n", *(long *)&u4);
    printf("%llx\n", *(long *)&u8);
  }
  }
#pragma omp parallel default(none) shared(r4,r8)
  {
#pragma omp master
  {
    printf("%llx\n", *(long *)&r4);
    printf("%llx\n", *(long *)&r8);
  }
  }
  return 0;
}

#else

int main()
{
  puts("f0c09060300");
  puts("d0c07060100");
  puts("f0e0d0c03020100");
  puts("706050403020100");
  puts("f0c09060300");
  puts("d0c07060100");
  puts("f0e0d0c03020100");
  puts("706050403020100");
  puts("f0e0d0c03020100");
  puts("706050403020100");
}

#endif

#include <stdio.h>

#ifdef __ARM_FEATURE_SVE

#include <stdio.h>
#include <arm_sve.h>

const unsigned char input[256] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
                                 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31 };

int main(int argc, char** argv)
{
  svbool_t b = svptrue_b8();

  svint8x4_t  i1 = svld4_s8(b, (void *)&input);
  svint16x4_t i2 = svld4_s16(b, (void *)&input);
  svint32x4_t i4 = svld4_s32(b, (void *)&input);
  svint64x4_t i8 = svld4_s64(b, (void *)&input);

  svuint8x4_t  u1 = svld4_u8(b, (void *)&input);
  svuint16x4_t u2 = svld4_u16(b, (void *)&input);
  svuint32x4_t u4 = svld4_u32(b, (void *)&input);
  svuint64x4_t u8 = svld4_u64(b, (void *)&input);

  svfloat32x4_t r4 = svld4_f32(b, (void *)&input);
  svfloat64x4_t r8 = svld4_f64(b, (void *)&input);

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
  puts("1c1814100c080400");
  puts("1918111009080100");
  puts("1312111003020100");
  puts("706050403020100");
  puts("1c1814100c080400");
  puts("1918111009080100");
  puts("1312111003020100");
  puts("706050403020100");
  puts("1312111003020100");
  puts("706050403020100");
}

#endif

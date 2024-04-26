#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_ld1()
{
  svint16_t vi2;
  svint32_t vi4;
  svint64_t vi8;
  const signed char       *base1;
  const signed short      *base2;
  const signed int        *base4;
  const signed long long  *base8;
  svbool_t pg;
  vi2 = svld1sb_s16( pg, base2);
  vi4 = svld1sb_s32( pg, base4);
  vi8 = svld1sb_s64( pg, base8);
  dummy(vi2,vi4,vi8);
}
void test_ld1u()
{
  svuint16_t vu2;
  svuint32_t vu4;
  svuint64_t vu8;
  const unsigned char       *base1;
  const unsigned short      *base2;
  const unsigned int        *base4;
  const unsigned long long  *base8;
  svbool_t pg;
  vu2 = svld1sb_u16( pg, base2);
  vu4 = svld1sb_u32( pg, base4);
  vu8 = svld1sb_u64( pg, base8);
  dummy(vu2,vu4,vu8);
}
void test_ld1_vnum()
{
  svint16_t vi2;
  svint32_t vi4;
  svint64_t vi8;
  const signed char       *base1;
  const signed short      *base2;
  const signed int        *base4;
  const signed long long  *base8;
  svbool_t pg;
  vi2 = svld1sb_vnum_s16( pg, base2, 2);
  vi4 = svld1sb_vnum_s32( pg, base4, 3);
  vi8 = svld1sb_vnum_s64( pg, base8, 4);
  dummy(vi2,vi4,vi8);
}
void test_ld1u_vnum()
{
  svuint16_t vu2;
  svuint32_t vu4;
  svuint64_t vu8;
  const unsigned char       *base1;
  const unsigned short      *base2;
  const unsigned int        *base4;
  const unsigned long long  *base8;
  svbool_t pg;
  vu2 = svld1sb_vnum_u16( pg, base2, 0);
  vu4 = svld1sb_vnum_u32( pg, base4, 0);
  vu8 = svld1sb_vnum_u64( pg, base8, 0);
  dummy(vu2,vu4,vu8);
}
void test_ld1_vnum_num()
{
  svint16_t vi2;
  svint32_t vi4;
  svint64_t vi8;
  const signed char       *base1;
  const signed short      *base2;
  const signed int        *base4;
  const signed long long  *base8;
  svbool_t pg;
  vi2 = svld1sb_vnum_s16( pg, base2, -6);
  vi4 = svld1sb_vnum_s32( pg, base4, -5);
  vi8 = svld1sb_vnum_s64( pg, base8, -4);
  dummy(vi2,vi4,vi8);
}
void test_ld1u_vnum_num()
{
  svuint16_t vu2;
  svuint32_t vu4;
  svuint64_t vu8;
  const unsigned char       *base1;
  const unsigned short      *base2;
  const unsigned int        *base4;
  const unsigned long long  *base8;
  svbool_t pg;
  vu2 = svld1sb_vnum_u16( pg, base2, -2);
  vu4 = svld1sb_vnum_u32( pg, base4, -1);
  vu8 = svld1sb_vnum_u64( pg, base8, 0);
  dummy(vu2,vu4,vu8);
}
void dummy() {};

int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif

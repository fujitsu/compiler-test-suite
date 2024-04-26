#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_ld1()
{
  svbool_t pg;
  svint8_t vi1;
  svint16_t vi2;
  svint32_t vi4;
  svint64_t vi8;
  svuint8_t vu1;
  svuint16_t vu2;
  svuint32_t vu4;
  svuint64_t vu8;
  svfloat32_t vr4;
  svfloat64_t vr8;
  const signed char       *base1;
  const signed short      *base2;
  const signed int        *base4;
  const signed long long  *base8;
  vi1 = svld1_s8(  pg, base1);
  vi2 = svld1_s16( pg, base2);
  vi4 = svld1_s32( pg, base4);
  vi8 = svld1_s64( pg, base8);
  dummy(vi1,	vi2,	vi4,	vi8);
}
void test_ld1u()
{
svbool_t pg;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
  const unsigned char       *base1;
  const unsigned short      *base2;
  const unsigned int        *base4;
  const unsigned long long  *base8;
  vu1 = svld1_u8(  pg, base1);
  vu2 = svld1_u16( pg, base2);
  vu4 = svld1_u32( pg, base4);
  vu8 = svld1_u64( pg, base8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_ld1r()
{
svbool_t pg;
svfloat32_t vr4;
svfloat64_t vr8;
  const float       *base4;
  const double      *base8;
  vr4 = svld1_f32( pg, base4);
  vr8 = svld1_f64( pg, base8);
  dummy(vr4,vr8);
}
void test_ld1_vnum()
{
svbool_t pg;
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
  const signed char       *base1;
  const signed short      *base2;
  const signed int        *base4;
  const signed long long  *base8;
  vi1 = svld1_vnum_s8(  pg, base1, 1);
  vi2 = svld1_vnum_s16( pg, base2, 2);
  vi4 = svld1_vnum_s32( pg, base4, 3);
  vi8 = svld1_vnum_s64( pg, base8, 4);
  dummy(vi1,	vi2,	vi4,	vi8);
}
void test_ld1u_vnum()
{
svbool_t pg;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
  const unsigned char       *base1;
  const unsigned short      *base2;
  const unsigned int        *base4;
  const unsigned long long  *base8;
  vu1 = svld1_vnum_u8(  pg, base1, 4);
  vu2 = svld1_vnum_u16( pg, base2, 3);
  vu4 = svld1_vnum_u32( pg, base4, 2);
  vu8 = svld1_vnum_u64( pg, base8, 1);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_ld1r_vnum()
{
svbool_t pg;
svfloat32_t vr4;
svfloat64_t vr8;
  const float       *base4;
  const double      *base8;
  vr4 = svld1_vnum_f32( pg, base4, -1);
  vr8 = svld1_vnum_f64( pg, base8, -2);
  dummy(vr4,vr8);
}
void test_ld1_vnum_num()
{
svbool_t pg;
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
  const signed char       *base1;
  const signed short      *base2;
  const signed int        *base4;
  const signed long long  *base8;
  vi1 = svld1_vnum_s8(  pg, base1, -7);
  vi2 = svld1_vnum_s16( pg, base2, -6);
  vi4 = svld1_vnum_s32( pg, base4, -5);
  vi8 = svld1_vnum_s64( pg, base8, -4);
  dummy(vi1,	vi2,	vi4,	vi8);
}
void test_ld1u_vnum_num()
{
svbool_t pg;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
  const unsigned char       *base1;
  const unsigned short      *base2;
  const unsigned int        *base4;
  const unsigned long long  *base8;
  vu1 = svld1_vnum_u8(  pg, base1, -3);
  vu2 = svld1_vnum_u16( pg, base2, -2);
  vu4 = svld1_vnum_u32( pg, base4, -1);
  vu8 = svld1_vnum_u64( pg, base8, 0);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_ld1r_vnum_num()
{
svbool_t pg;
svfloat32_t vr4;
svfloat64_t vr8;
  const float       *base4;
  const double      *base8;
  vr4 = svld1_vnum_f32( pg, base4, 1);
  vr8 = svld1_vnum_f64( pg, base8, 2);
  dummy(vr4,vr8);
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

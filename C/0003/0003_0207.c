#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_add_z()
{
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
svbool_t pg, pg1, pg2, pg3, pg4, pg5, pg6;
svbool_t pg7, pg8, pg9, pg10, pg11, pg12;
svint8_t i1a,i1b,i1c;
svint16_t i2a,i2b,i2c;
svint32_t i4a,i4b,i4c;
svint64_t i8a,i8b,i8c;
svuint8_t u1a,u1b,u1c;
svuint16_t u2a,u2b,u2c;
svuint32_t u4a,u4b,u4c,u4d;
svuint64_t u8a,u8b,u8c,u8d;
svfloat32_t r4a,r4b,r4c;
svfloat64_t r8a,r8b,r8c;
  vi1 = svtbl_s8( i1a, u1a);
  vi2 = svtbl_s16( i2a, u2a);
  vi4 = svtbl_s32( i4a, u4a);
  vi8 = svtbl_s64( i8a, u8a);
  vu1 = svtbl_u8( u1b, u1c);
  vu2 = svtbl_u16( u2b, u2c);
  vu4 = svtbl_u32( u4b, u4c);
  vu8 = svtbl_u64( u8b, u8c);
  vr4 = svtbl_f32( r4a, u4d);
  vr8 = svtbl_f64( r8a, u8d);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
  dummy(vr4,vr8);
}
void dummy() {}

int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif

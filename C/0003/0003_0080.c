#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_cvt_z()
{
  svfloat32_t vr41,vr42,vr43,vr44;
  svfloat64_t vr81,vr82,vr83,vr84;
  svbool_t pg;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vr41 = svcvt_f32_s32_z( pg,i4a);
  vr81 = svcvt_f64_s32_z( pg,i4a);
  vr42 = svcvt_f32_s64_z( pg,i8a);
  vr82 = svcvt_f64_s64_z( pg,i8a);
  dummy(vr41,	vr81,	vr42,	vr82);
  vr43 = svcvt_f32_u32_z( pg,u4a);
  vr83 = svcvt_f64_u32_z( pg,u4a);
  vr44 = svcvt_f32_u64_z( pg,u8a);
  vr84 = svcvt_f64_u64_z( pg,u8a);
  dummy(vr43,	vr83,	vr44,	vr84);
}
void test_cvt_m()
{
  svfloat32_t vr41,vr42,vr43,vr44,r4a;
  svfloat64_t vr81,vr82,vr83,vr84,r8a;
  svbool_t pg;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vr41 = svcvt_f32_s32_m( r4a,pg,i4a);
  vr81 = svcvt_f64_s32_m( r8a,pg,i4a);
  vr42 = svcvt_f32_s64_m( r4a,pg,i8a);
  vr82 = svcvt_f64_s64_m( r8a,pg,i8a);
  vr43 = svcvt_f32_u32_m( r4a,pg,u4a);
  vr83 = svcvt_f64_u32_m( r8a,pg,u4a);
  dummy(vr41,	vr81,	vr42,	vr82);
  vr44 = svcvt_f32_u64_m( r4a,pg,u8a);
  vr84 = svcvt_f64_u64_m( r8a,pg,u8a);
  dummy(vr43,	vr83,	vr44,	vr84);
}
void test_cvt_x()
{
  svfloat32_t vr41,vr42,vr43,vr44;
  svfloat64_t vr81,vr82,vr83,vr84;
  svbool_t pg;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vr41 = svcvt_f32_s32_x( pg,i4a);
  vr81 = svcvt_f64_s32_x( pg,i4a);
  vr42 = svcvt_f32_s64_x( pg,i8a);
  vr82 = svcvt_f64_s64_x( pg,i8a);
  vr43 = svcvt_f32_u32_x( pg,u4a);
  vr83 = svcvt_f64_u32_x( pg,u4a);
  vr44 = svcvt_f32_u64_x( pg,u8a);
  vr84 = svcvt_f64_u64_x( pg,u8a);
  dummy(vr41,	vr81,	vr42,	vr82);
  dummy(vr43,	vr83,	vr44,	vr84);
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

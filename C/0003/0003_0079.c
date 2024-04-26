#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_cvt_z()
{
  svint32_t vi41,vi42,i4a;
  svint64_t vi81,vi82,i8a;
  svuint32_t vu41,vu42,u4a;
  svuint64_t vu81,vu82,u8a;
  svbool_t pg;
  svfloat32_t r4a;
  svfloat64_t r8a;
  vi41 = svcvt_s32_f32_z( pg,r4a);
  vi42 = svcvt_s32_f64_z( pg,r8a);
  vi81 = svcvt_s64_f32_z( pg,r4a);
  vi82 = svcvt_s64_f64_z( pg,r8a);
  dummy(vi41,	vi42,	vi81,	vi82);
  vu41 = svcvt_u32_f32_z( pg,r4a);
  vu42 = svcvt_u32_f64_z( pg,r8a);
  vu81 = svcvt_u64_f32_z( pg,r4a);
  vu82 = svcvt_u64_f64_z( pg,r8a);
  dummy(vu41,	vu42,	vu81,	vu82);
}
void test_cvt_m()
{
  svint32_t vi41,vi42,i4a;
  svint64_t vi81,vi82,i8a;
  svuint32_t vu41,vu42,u4a;
  svuint64_t vu81,vu82,u8a;
  svbool_t pg;
  svfloat32_t r4a;
  svfloat64_t r8a;
  vi41 = svcvt_s32_f32_m( i4a,pg,r4a);
  vi42 = svcvt_s32_f64_m( i4a,pg,r8a);
  vi81 = svcvt_s64_f32_m( i8a,pg,r4a);
  vi82 = svcvt_s64_f64_m( i8a,pg,r8a);
  vu41 = svcvt_u32_f32_m( u4a,pg,r4a);
  vu42 = svcvt_u32_f64_m( u4a,pg,r8a);
  vu81 = svcvt_u64_f32_m( u8a,pg,r4a);
  dummy(vi41,	vi42,	vi81,	vi82);
  vu82 = svcvt_u64_f64_m( u8a,pg,r8a);
  dummy(vu41,	vu42,	vu81,	vu82);
}
void test_cvt_x()
{
  svint32_t vi41,vi42,i4a;
  svint64_t vi81,vi82,i8a;
  svuint32_t vu41,vu42,u4a;
  svuint64_t vu81,vu82,u8a;
  svbool_t pg;
  svfloat32_t r4a;
  svfloat64_t r8a;
  vi41 = svcvt_s32_f32_x( pg,r4a);
  vi42 = svcvt_s32_f64_x( pg,r8a);
  vi81 = svcvt_s64_f32_x( pg,r4a);
  vi82 = svcvt_s64_f64_x( pg,r8a);
  vu41 = svcvt_u32_f32_x( pg,r4a);
  vu42 = svcvt_u32_f64_x( pg,r8a);
  vu81 = svcvt_u64_f32_x( pg,r4a);
  vu82 = svcvt_u64_f64_x( pg,r8a);
  dummy(vi41,	vi42,	vi81,	vi82);
  dummy(vu41,	vu42,	vu81,	vu82);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
unsigned long long u81,u82,u83,u84,u85,u86;
unsigned long long u87,u88,u89,u810,u811;
void test_len()
{
svint8_t i1a,i1b,i1c;
svint16_t i2a,i2b,i2c;
svint32_t i4a,i4b,i4c;
svint64_t i8a,i8b,i8c;
svuint8_t u1a,u1b,u1c;
svuint16_t u2a,u2b,u2c;
svuint32_t u4a,u4b,u4c;
svuint64_t u8a,u8b,u8c;
svfloat32_t r4a,r4b,r4c;
svfloat64_t r8a,r8b,r8c;
  u81 = svlen_s8( i1a);
  u82 = svlen_s16( i2a);
  u83 = svlen_s32( i4a);
  u84 = svlen_s64( i8a);
  u85 = svlen_u8( u1a);
  u86 = svlen_u16( u2a);
  u87 = svlen_u32( u4a);
  u88 = svlen_u64( u8a);
  u810 = svlen_f32( r4a);
  u811 = svlen_f64( r8a);
}
int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif

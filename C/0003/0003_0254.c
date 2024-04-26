#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
signed char i1;
signed short i2;
signed int i4;
signed int i41,i42,i43,i44;
signed long long i8;
signed long long i81,i82,i83,i84;
unsigned char u1;
unsigned short u2;
unsigned int u4;
unsigned int u41,u42,u43,u44;
unsigned long long u8;
unsigned long long u81,u82,u83,u84;
float r4;
double r8;
void test_qdecp_n()
{
svbool_t pg;
  i41 = svqdecp_n_s32_b8( i4, pg);
  i42 = svqdecp_n_s32_b16( i4, pg);
  i43 = svqdecp_n_s32_b32( i4, pg);
  i44 = svqdecp_n_s32_b64( i4, pg);
  i81 = svqdecp_n_s64_b8( i8, pg);
  i82 = svqdecp_n_s64_b16( i8, pg);
  i83 = svqdecp_n_s64_b32( i8, pg);
  i84 = svqdecp_n_s64_b64( i8, pg);
  u41 = svqdecp_n_u32_b8( u4, pg);
  u42 = svqdecp_n_u32_b16( u4, pg);
  u43 = svqdecp_n_u32_b32( u4, pg);
  u44 = svqdecp_n_u32_b64( u4, pg);
  u81 = svqdecp_n_u64_b8( u8, pg);
  u82 = svqdecp_n_u64_b16( u8, pg);
  u83 = svqdecp_n_u64_b32( u8, pg);
  u84 = svqdecp_n_u64_b64( u8, pg);
}
void test_qdecp_num()
{
svbool_t pg;
  i41 = svqdecp_n_s32_b8( 4, pg);
  i42 = svqdecp_n_s32_b16( 4, pg);
  i43 = svqdecp_n_s32_b32( 4, pg);
  i44 = svqdecp_n_s32_b64( 4, pg);
  i81 = svqdecp_n_s64_b8( 8, pg);
  i82 = svqdecp_n_s64_b16( 8, pg);
  i83 = svqdecp_n_s64_b32( 8, pg);
  i84 = svqdecp_n_s64_b64( 8, pg);
  u41 = svqdecp_n_u32_b8( 4, pg);
  u42 = svqdecp_n_u32_b16( 4, pg);
  u43 = svqdecp_n_u32_b32( 4, pg);
  u44 = svqdecp_n_u32_b64( 4, pg);
  u81 = svqdecp_n_u64_b8( 8, pg);
  u82 = svqdecp_n_u64_b16( 8, pg);
  u83 = svqdecp_n_u64_b32( 8, pg);
  u84 = svqdecp_n_u64_b64( 8, pg);
}
void test_qdecp()
{
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svbool_t pg;
svint16_t i2a,i2b,i2c;
svint32_t i4a,i4b,i4c;
svint64_t i8a,i8b,i8c;
svuint16_t u2a,u2b,u2c;
svuint32_t u4a,u4b,u4c;
svuint64_t u8a,u8b,u8c;
  vi2 = svqdecp_s16( i2a, pg);
  vi4 = svqdecp_s32( i4a, pg);
  vi8 = svqdecp_s64( i8a, pg);
  dummy(vi2,	vi4,	vi8);
  vu2 = svqdecp_u16( u2a, pg);
  vu4 = svqdecp_u32( u4a, pg);
  vu8 = svqdecp_u64( u8a, pg);
  dummy(vu2,	vu4,	vu8);
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

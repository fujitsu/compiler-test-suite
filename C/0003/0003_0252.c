#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
signed char i1;
signed short i2;
signed int i4;
signed long long i8;
unsigned char u1;
unsigned short u2;
unsigned int u4;
unsigned long long u8;
unsigned long long u81,u82,u83,u84;
float r4;
double r8;
void test_qdecw_n()
{
  i4 = svqdecw_n_s32( i4, 4);
  i8 = svqdecw_n_s64( i8, 8);
  u4 = svqdecw_n_u32( u4, 4);
  u8 = svqdecw_n_u64( u8, 8);
}
void test_qdecw_num()
{
  i4 = svqdecw_n_s32( 4, 4);
  i8 = svqdecw_n_s64( 8, 8);
  u4 = svqdecw_n_u32( 4, 4);
  u8 = svqdecw_n_u64( 8, 8);
}
void test_qdecw_pat_n()
{
  i4 = svqdecw_pat_n_s32( i4, 31, 4);
  i8 = svqdecw_pat_n_s64( i8, 31, 8);
  u4 = svqdecw_pat_n_u32( u4, 31, 4);
  u8 = svqdecw_pat_n_u64( u8, 31, 8);
}
void test_qdecw_pat_num()
{
  i4 = svqdecw_pat_n_s32( 4, 31, 4);
  i8 = svqdecw_pat_n_s64( 8, 31, 8);
  u4 = svqdecw_pat_n_u32( 4, 31, 4);
  u8 = svqdecw_pat_n_u64( 8, 31, 8);
}
void test_qdecw()
{
svint32_t vi4;
svuint32_t vu4;
svint32_t i4a,i4b,i4c;
svuint32_t u4a,u4b,u4c;
  vi4 = svqdecw_s32( i4a, 2);
  vu4 = svqdecw_u32( u4a, 2);
  dummy(vi4,vu4);
}
void test_qdecw_pat()
{
svint32_t vi4;
svuint32_t vu4;
svint32_t i4a,i4b,i4c;
svuint32_t u4a,u4b,u4c;
  vi4 = svqdecw_pat_s32( i4a, 31, 2);
  vu4 = svqdecw_pat_u32( u4a, 31, 2);
  dummy(vi4,vu4);
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

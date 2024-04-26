#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
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
void test_qdecb_n()
{
  i4 = svqdecb_n_s32( i4, 4);
  i8 = svqdecb_n_s64( i8, 8);
  u4 = svqdecb_n_u32( u4, 4);
  u8 = svqdecb_n_u64( u8, 8);
}
void test_qdecb_num()
{
  i4 = svqdecb_n_s32( 4, 4);
  i8 = svqdecb_n_s64( 8, 8);
  u4 = svqdecb_n_u32( 4, 4);
  u8 = svqdecb_n_u64( 8, 8);
}
void test_qdecb_pat_n()
{
  i4 = svqdecb_pat_n_s32( i4, 31, 4);
  i8 = svqdecb_pat_n_s64( i8, 31, 8);
  u4 = svqdecb_pat_n_u32( u4, 31, 4);
  u8 = svqdecb_pat_n_u64( u8, 31, 8);
}
void test_qdecb_pat_num()
{
  i4 = svqdecb_pat_n_s32( 4, 31, 4);
  i8 = svqdecb_pat_n_s64( 8, 31, 8);
  u4 = svqdecb_pat_n_u32( 4, 31, 4);
  u8 = svqdecb_pat_n_u64( 8, 31, 8);
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

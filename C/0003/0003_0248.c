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
void test_qincd_n()
{
  i4 = svqincd_n_s32( i4, 4);
  i8 = svqincd_n_s64( i8, 8);
  u4 = svqincd_n_u32( u4, 4);
  u8 = svqincd_n_u64( u8, 8);
}
void test_qincd_num()
{
  i4 = svqincd_n_s32( 4, 4);
  i8 = svqincd_n_s64( 8, 8);
  u4 = svqincd_n_u32( 4, 4);
  u8 = svqincd_n_u64( 8, 8);
}
void test_qincd_pat_n()
{
  i4 = svqincd_pat_n_s32( i4, 31, 4);
  i8 = svqincd_pat_n_s64( i8, 31, 8);
  u4 = svqincd_pat_n_u32( u4, 31, 4);
  u8 = svqincd_pat_n_u64( u8, 31, 8);
}
void test_qincd_pat_num()
{
  i4 = svqincd_pat_n_s32( 4, 31, 4);
  i8 = svqincd_pat_n_s64( 8, 31, 8);
  u4 = svqincd_pat_n_u32( 4, 31, 4);
  u8 = svqincd_pat_n_u64( 8, 31, 8);
}
void test_qincd()
{
  svint64_t vi8;
  svuint64_t vu8;
  svint64_t i8a;
  svuint64_t u8a;
  vi8 = svqincd_s64( i8a, 2);
  vu8 = svqincd_u64( u8a, 2);
  dummy(vi8,vu8);
}
void test_qincd_pat()
{
  svint64_t vi8;
  svuint64_t vu8;
  svint64_t i8a;
  svuint64_t u8a;
  vi8 = svqincd_pat_s64( i8a, 31, 2);
  vu8 = svqincd_pat_u64( u8a, 31, 2);
  dummy(vi8,vu8);
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

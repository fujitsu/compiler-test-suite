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
void test_qinch_n()
{
  i4 = svqinch_n_s32( i4, 4);
  i8 = svqinch_n_s64( i8, 8);
  u4 = svqinch_n_u32( u4, 4);
  u8 = svqinch_n_u64( u8, 8);
}
void test_qinch_num()
{
  i4 = svqinch_n_s32( 4, 4);
  i8 = svqinch_n_s64( 8, 8);
  u4 = svqinch_n_u32( 4, 4);
  u8 = svqinch_n_u64( 8, 8);
}
void test_qinch_pat_n()
{
  i4 = svqinch_pat_n_s32( i4, 31, 4);
  i8 = svqinch_pat_n_s64( i8, 31, 8);
  u4 = svqinch_pat_n_u32( u4, 31, 4);
  u8 = svqinch_pat_n_u64( u8, 31, 8);
}
void test_qinch_pat_num()
{
  i4 = svqinch_pat_n_s32( 4, 31, 4);
  i8 = svqinch_pat_n_s64( 8, 31, 8);
  u4 = svqinch_pat_n_u32( 4, 31, 4);
  u8 = svqinch_pat_n_u64( 8, 31, 8);
}
void test_qinch()
{
  svint16_t vi2;
  svuint16_t vu2;
  svint16_t i2a;
  svuint16_t u2a;
  vi2 = svqinch_s16( i2a, 2);
  vu2 = svqinch_u16( u2a, 2);
  dummy(vi2,vu2);
}
void test_qinch_pat()
{
  svint16_t vi2;
  svuint16_t vu2;
  svint16_t i2a;
  svuint16_t u2a;
  vi2 = svqinch_pat_s16( i2a, 31, 2);
  vu2 = svqinch_pat_u16( u2a, 31, 2);
  dummy(vi2,vu2);
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

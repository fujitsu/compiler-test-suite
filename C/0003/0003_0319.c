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
float r4;
double r8;
void test_lsl_z()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_s8_z( pg,i1a,u1a);
  vi2 = svlsl_s16_z( pg,i2a,u2a);
  vi4 = svlsl_s32_z( pg,i4a,u4a); 
  vi8 = svlsl_s64_z( pg,i8a,u8a);
  vu1 = svlsl_u8_z( pg,u1a,u1b);
  vu2 = svlsl_u16_z( pg,u2a,u2b);
  vu4 = svlsl_u32_z( pg,u4a,u4b);
  vu8 = svlsl_u64_z( pg,u8a,u8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_m()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_s8_m( pg,i1a,u1a);
  vi2 = svlsl_s16_m( pg,i2a,u2a);
  vi4 = svlsl_s32_m( pg,i4a,u4a); 
  vi8 = svlsl_s64_m( pg,i8a,u8a);
  vu1 = svlsl_u8_m( pg,u1a,u1b);
  vu2 = svlsl_u16_m( pg,u2a,u2b);
  vu4 = svlsl_u32_m( pg,u4a,u4b);
  vu8 = svlsl_u64_m( pg,u8a,u8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_x()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_s8_x( pg,i1a,u1a);
  vi2 = svlsl_s16_x( pg,i2a,u2a);
  vi4 = svlsl_s32_x( pg,i4a,u4a); 
  vi8 = svlsl_s64_x( pg,i8a,u8a);
  vu1 = svlsl_u8_x( pg,u1a,u1b);
  vu2 = svlsl_u16_x( pg,u2a,u2b);
  vu4 = svlsl_u32_x( pg,u4a,u4b);
  vu8 = svlsl_u64_x( pg,u8a,u8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_n_z()
{
  svbool_t pg;
  svint64_t vi8;
  svuint64_t vu8;
  svint64_t i8a,i8b,i8c;
  svuint64_t u8a,u8b,u8c;
  vi8 = svlsl_n_s64_z( pg,i8a,u8);
  vu8 = svlsl_n_u64_z( pg,u8a,u8);
  dummy(vi8, vu8);
}
void test_lsl_num_z()
{
  svbool_t pg;
  svint64_t vi8;
  svuint64_t vu8;
  svint64_t i8a,i8b,i8c;
  svuint64_t u8a,u8b,u8c;
  vi8 = svlsl_n_s64_z( pg,i8a,8);
  vu8 = svlsl_n_u64_z( pg,u8a,8);
  dummy(vi8, vu8);
}
void test_lsl_n_m()
{
  svbool_t pg;
  svint64_t vi8;
  svuint64_t vu8;
  svint64_t i8a,i8b,i8c;
  svuint64_t u8a,u8b,u8c;
  vi8 = svlsl_n_s64_m( pg,i8a,u8);
  vu8 = svlsl_n_u64_m( pg,u8a,u8);
  dummy(vi8, vu8);
}
void test_lsl_num_m()
{
  svbool_t pg;
  svint64_t vi8;
  svuint64_t vu8;
  svint64_t i8a,i8b,i8c;
  svuint64_t u8a,u8b,u8c;
  vi8 = svlsl_n_s64_m( pg,i8a,8);
  vu8 = svlsl_n_u64_m( pg,u8a,8);
  dummy(vi8, vu8);
}
void test_lsl_n_x()
{
  svbool_t pg;
  svint64_t vi8;
  svuint64_t vu8;
  svint64_t i8a,i8b,i8c;
  svuint64_t u8a,u8b,u8c;
  vi8 = svlsl_n_s64_x( pg,i8a,u8);
  vu8 = svlsl_n_u64_x( pg,u8a,u8);
  dummy(vi8, vu8);
}
void test_lsl_num_x()
{
  svbool_t pg;
  svint64_t vi8;
  svuint64_t vu8;
  svint64_t i8a,i8b,i8c;
  svuint64_t u8a,u8b,u8c;
  vi8 = svlsl_n_s64_x( pg,i8a,8);
  vu8 = svlsl_n_u64_x( pg,u8a,8);
  dummy(vi8, vu8);
}
void test_lsl_wide_z()
{
  svbool_t pg;
  svint8_t vi1;
  svint16_t vi2;
  svint32_t vi4;
  svuint8_t vu1;
  svuint16_t vu2;
  svuint32_t vu4;
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_wide_s8_z( pg,i1a,u8a);
  vi2 = svlsl_wide_s16_z( pg,i2a,u8a);
  vi4 = svlsl_wide_s32_z( pg,i4a,u8a); 
  vu1 = svlsl_wide_u8_z( pg,u1a,u8b);
  vu2 = svlsl_wide_u16_z( pg,u2a,u8b);
  vu4 = svlsl_wide_u32_z( pg,u4a,u8b);
  dummy(vi1,	vi2,	vi4);
  dummy(vu1,	vu2,	vu4);
}
void test_lsl_wide_m()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_wide_s8_m( pg,i1a,u8a);
  vi2 = svlsl_wide_s16_m( pg,i2a,u8a);
  vi4 = svlsl_wide_s32_m( pg,i4a,u8a); 
  vu1 = svlsl_wide_u8_m( pg,u1a,u8b);
  vu2 = svlsl_wide_u16_m( pg,u2a,u8b);
  vu4 = svlsl_wide_u32_m( pg,u4a,u8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_wide_x()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_wide_s8_x( pg,i1a,u8a);
  vi2 = svlsl_wide_s16_x( pg,i2a,u8a);
  vi4 = svlsl_wide_s32_x( pg,i4a,u8a); 
  vu1 = svlsl_wide_u8_x( pg,u1a,u8b);
  vu2 = svlsl_wide_u16_x( pg,u2a,u8b);
  vu4 = svlsl_wide_u32_x( pg,u4a,u8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_wide_n_z()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_n_s8_z( pg,i1a,u8);
  vi2 = svlsl_n_s16_z( pg,i2a,u8);
  vi4 = svlsl_n_s32_z( pg,i4a,u8); 
  vu1 = svlsl_n_u8_z( pg,u1a,u8);
  vu2 = svlsl_n_u16_z( pg,u2a,u8);
  vu4 = svlsl_n_u32_z( pg,u4a,u8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_wide_num_z()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_n_s8_z( pg,i1a,8);
  vi2 = svlsl_n_s16_z( pg,i2a,8);
  vi4 = svlsl_n_s32_z( pg,i4a,8); 
  vu1 = svlsl_n_u8_z( pg,u1a,8);
  vu2 = svlsl_n_u16_z( pg,u2a,8);
  vu4 = svlsl_n_u32_z( pg,u4a,8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_wide_n_m()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_n_s8_m( pg,i1a,u8);
  vi2 = svlsl_n_s16_m( pg,i2a,u8);
  vi4 = svlsl_n_s32_m( pg,i4a,u8); 
  vu1 = svlsl_n_u8_m( pg,u1a,u8);
  vu2 = svlsl_n_u16_m( pg,u2a,u8);
  vu4 = svlsl_n_u32_m( pg,u4a,u8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_wide_num_m()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_n_s8_m( pg,i1a,8);
  vi2 = svlsl_n_s16_m( pg,i2a,8);
  vi4 = svlsl_n_s32_m( pg,i4a,8); 
  vu1 = svlsl_n_u8_m( pg,u1a,8);
  vu2 = svlsl_n_u16_m( pg,u2a,8);
  vu4 = svlsl_n_u32_m( pg,u4a,8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_wide_n_x()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_n_s8_x( pg,i1a,u8);
  vi2 = svlsl_n_s16_x( pg,i2a,u8);
  vi4 = svlsl_n_s32_x( pg,i4a,u8); 
  vu1 = svlsl_n_u8_x( pg,u1a,u8);
  vu2 = svlsl_n_u16_x( pg,u2a,u8);
  vu4 = svlsl_n_u32_x( pg,u4a,u8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_lsl_wide_num_x()
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
  svint8_t i1a,i1b,i1c;
  svint16_t i2a,i2b,i2c;
  svint32_t i4a,i4b,i4c;
  svint64_t i8a,i8b,i8c;
  svuint8_t u1a,u1b,u1c;
  svuint16_t u2a,u2b,u2c;
  svuint32_t u4a,u4b,u4c;
  svuint64_t u8a,u8b,u8c;
  vi1 = svlsl_n_s8_x( pg,i1a,8);
  vi2 = svlsl_n_s16_x( pg,i2a,8);
  vi4 = svlsl_n_s32_x( pg,i4a,8); 
  vu1 = svlsl_n_u8_x( pg,u1a,8);
  vu2 = svlsl_n_u16_x( pg,u2a,8);
  vu4 = svlsl_n_u32_x( pg,u4a,8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
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

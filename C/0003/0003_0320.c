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
void test_lsr_z()
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
  vu1 = svlsr_u8_z( pg,u1a,u1b);
  vu2 = svlsr_u16_z( pg,u2a,u2b);
  vu4 = svlsr_u32_z( pg,u4a,u4b);
  vu8 = svlsr_u64_z( pg,u8a,u8b);
  dummy(vu1,	vu2,	vu4, vu8);
}
void test_lsr_m()
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
  vu1 = svlsr_u8_m( pg,u1a,u1b);
  vu2 = svlsr_u16_m( pg,u2a,u2b);
  vu4 = svlsr_u32_m( pg,u4a,u4b);
  vu8 = svlsr_u64_m( pg,u8a,u8b);
  dummy(vu1,	vu2,	vu4, vu8);
}
void test_lsr_x()
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
  vu1 = svlsr_u8_x( pg,u1a,u1b);
  vu2 = svlsr_u16_x( pg,u2a,u2b);
  vu4 = svlsr_u32_x( pg,u4a,u4b);
  vu8 = svlsr_u64_x( pg,u8a,u8b);
  dummy(vu1,	vu2,	vu4, vu8);
}
void test_lsr_n_z()
{
  svbool_t pg;
  svuint64_t vu8;
  svuint64_t u8a,u8b,u8c;
  vu8 = svlsr_n_u64_z( pg,u8a,u8);
  dummy(vu8);
}
void test_lsr_num_z()
{
  svbool_t pg;
  svuint64_t vu8;
  svuint64_t u8a,u8b,u8c;
  vu8 = svlsr_n_u64_z( pg,u8a,8);
  dummy(vu8);
}
void test_lsr_n_m()
{
  svbool_t pg;
  svuint64_t vu8;
  svuint64_t u8a,u8b,u8c;
  vu8 = svlsr_n_u64_m( pg,u8a,u8);
  dummy(vu8);
}
void test_lsr_num_m()
{
  svbool_t pg;
  svuint64_t vu8;
  svuint64_t u8a,u8b,u8c;
  vu8 = svlsr_n_u64_m( pg,u8a,8);
  dummy(vu8);
}
void test_lsr_n_x()
{
  svbool_t pg;
  svuint64_t vu8;
  svuint64_t u8a,u8b,u8c;
  vu8 = svlsr_n_u64_x( pg,u8a,u8);
  dummy(vu8);
}
void test_lsr_num_x()
{
  svbool_t pg;
  svuint64_t vu8;
  svuint64_t u8a,u8b,u8c;
  vu8 = svlsr_n_u64_x( pg,u8a,8);
  dummy(vu8);
}
void test_lsr_wide_z()
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
  vu1 = svlsr_wide_u8_z( pg,u1a,u8b);
  vu2 = svlsr_wide_u16_z( pg,u2a,u8b);
  vu4 = svlsr_wide_u32_z( pg,u4a,u8b);
  dummy(vu1,	vu2,	vu4);
}
void test_lsr_wide_m()
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
  vu1 = svlsr_wide_u8_m( pg,u1a,u8b);
  vu2 = svlsr_wide_u16_m( pg,u2a,u8b);
  vu4 = svlsr_wide_u32_m( pg,u4a,u8b);
  dummy(vu1,	vu2,	vu4);
}
void test_lsr_wide_x()
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
  vu1 = svlsr_wide_u8_x( pg,u1a,u8b);
  vu2 = svlsr_wide_u16_x( pg,u2a,u8b);
  vu4 = svlsr_wide_u32_x( pg,u4a,u8b);
  dummy(vu1,	vu2,	vu4);
}
void test_lsr_wide_n_z()
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
  vu1 = svlsr_n_u8_z( pg,u1a,u8);
  vu2 = svlsr_n_u16_z( pg,u2a,u8);
  vu4 = svlsr_n_u32_z( pg,u4a,u8);
  dummy(vu1,	vu2,	vu4);
}
void test_lsr_wide_num_z()
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
  vu1 = svlsr_n_u8_z( pg,u1a,8);
  vu2 = svlsr_n_u16_z( pg,u2a,8);
  vu4 = svlsr_n_u32_z( pg,u4a,8);
  dummy(vu1,	vu2,	vu4);
}
void test_lsr_wide_n_m()
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
  vu1 = svlsr_n_u8_m( pg,u1a,u8);
  vu2 = svlsr_n_u16_m( pg,u2a,u8);
  vu4 = svlsr_n_u32_m( pg,u4a,u8);
  dummy(vu1,	vu2,	vu4);
}
void test_lsr_wide_num_m()
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
  vu1 = svlsr_n_u8_m( pg,u1a,8);
  vu2 = svlsr_n_u16_m( pg,u2a,8);
  vu4 = svlsr_n_u32_m( pg,u4a,8);
  dummy(vu1,	vu2,	vu4);
}
void test_lsr_wide_n_x()
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
  vu1 = svlsr_n_u8_x( pg,u1a,u8);
  vu2 = svlsr_n_u16_x( pg,u2a,u8);
  vu4 = svlsr_n_u32_x( pg,u4a,u8);
  dummy(vu1,	vu2,	vu4);
}
void test_lsr_wide_num_x()
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
  vu1 = svlsr_n_u8_x( pg,u1a,8);
  vu2 = svlsr_n_u16_x( pg,u2a,8);
  vu4 = svlsr_n_u32_x( pg,u4a,8);
  dummy(vu1,	vu2,	vu4);
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

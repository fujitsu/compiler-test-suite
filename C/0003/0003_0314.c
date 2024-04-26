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
void test_bic_z()
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
  vi1 = svbic_s8_z( pg,i1a,i1b);
  vi2 = svbic_s16_z( pg,i2a,i2b);
  vi4 = svbic_s32_z( pg,i4a,i4b);
  vi8 = svbic_s64_z( pg,i8a,i8b);
  vu1 = svbic_u8_z( pg,u1a,u1b);
  vu2 = svbic_u16_z( pg,u2a,u2b);
  vu4 = svbic_u32_z( pg,u4a,u4b);
  vu8 = svbic_u64_z( pg,u8a,u8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_bic_m()
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
  vi1 = svbic_s8_m( pg,i1a,i1b);
  vi2 = svbic_s16_m( pg,i2a,i2b);
  vi4 = svbic_s32_m( pg,i4a,i4b);
  vi8 = svbic_s64_m( pg,i8a,i8b);
  vu1 = svbic_u8_m( pg,u1a,u1b);
  vu2 = svbic_u16_m( pg,u2a,u2b);
  vu4 = svbic_u32_m( pg,u4a,u4b);
  vu8 = svbic_u64_m( pg,u8a,u8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_bic_x()
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
  vi1 = svbic_s8_x( pg,i1a,i1b);
  vi2 = svbic_s16_x( pg,i2a,i2b);
  vi4 = svbic_s32_x( pg,i4a,i4b);
  vi8 = svbic_s64_x( pg,i8a,i8b);
  vu1 = svbic_u8_x( pg,u1a,u1b);
  vu2 = svbic_u16_x( pg,u2a,u2b);
  vu4 = svbic_u32_x( pg,u4a,u4b);
  vu8 = svbic_u64_x( pg,u8a,u8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_bic_n_z()
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
  vi1 = svbic_n_s8_z( pg,i1a,i1);
  vi2 = svbic_n_s16_z( pg,i2a,i2);
  vi4 = svbic_n_s32_z( pg,i4a,i4);
  vi8 = svbic_n_s64_z( pg,i8a,i8);
  vu1 = svbic_n_u8_z( pg,u1a,u1);
  vu2 = svbic_n_u16_z( pg,u2a,u2);
  vu4 = svbic_n_u32_z( pg,u4a,u4);
  vu8 = svbic_n_u64_z( pg,u8a,u8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_bic_num_z()
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
  vi1 = svbic_n_s8_z( pg,i1a,1);
  vi2 = svbic_n_s16_z( pg,i2a,2);
  vi4 = svbic_n_s32_z( pg,i4a,4);
  vi8 = svbic_n_s64_z( pg,i8a,8);
  vu1 = svbic_n_u8_z( pg,u1a,1);
  vu2 = svbic_n_u16_z( pg,u2a,2);
  vu4 = svbic_n_u32_z( pg,u4a,4);
  vu8 = svbic_n_u64_z( pg,u8a,8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_bic_n_m()
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
  vi1 = svbic_n_s8_m( pg,i1a,i1);
  vi2 = svbic_n_s16_m( pg,i2a,i2);
  vi4 = svbic_n_s32_m( pg,i4a,i4);
  vi8 = svbic_n_s64_m( pg,i8a,i8);
  vu1 = svbic_n_u8_m( pg,u1a,u1);
  vu2 = svbic_n_u16_m( pg,u2a,u2);
  vu4 = svbic_n_u32_m( pg,u4a,u4);
  vu8 = svbic_n_u64_m( pg,u8a,u8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_bic_num_m()
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
  vi1 = svbic_n_s8_m( pg,i1a,1);
  vi2 = svbic_n_s16_m( pg,i2a,2);
  vi4 = svbic_n_s32_m( pg,i4a,4);
  vi8 = svbic_n_s64_m( pg,i8a,8);
  vu1 = svbic_n_u8_m( pg,u1a,1);
  vu2 = svbic_n_u16_m( pg,u2a,2);
  vu4 = svbic_n_u32_m( pg,u4a,4);
  vu8 = svbic_n_u64_m( pg,u8a,8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_bic_n_x()
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
  vi1 = svbic_n_s8_x( pg,i1a,i1);
  vi2 = svbic_n_s16_x( pg,i2a,i2);
  vi4 = svbic_n_s32_x( pg,i4a,i4);
  vi8 = svbic_n_s64_x( pg,i8a,i8);
  vu1 = svbic_n_u8_x( pg,u1a,u1);
  vu2 = svbic_n_u16_x( pg,u2a,u2);
  vu4 = svbic_n_u32_x( pg,u4a,u4);
  vu8 = svbic_n_u64_x( pg,u8a,u8);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
}
void test_bic_num_x()
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
  vi1 = svbic_n_s8_x( pg,i1a,1);
  vi2 = svbic_n_s16_x( pg,i2a,2);
  vi4 = svbic_n_s32_x( pg,i4a,4);
  vi8 = svbic_n_s64_x( pg,i8a,8);
  vu1 = svbic_n_u8_x( pg,u1a,1);
  vu2 = svbic_n_u16_x( pg,u2a,2);
  vu4 = svbic_n_u32_x( pg,u4a,4);
  vu8 = svbic_n_u64_x( pg,u8a,8);
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

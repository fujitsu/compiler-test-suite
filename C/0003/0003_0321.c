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
void test_asr_z()
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
  vi1 = svasr_s8_z( pg,i1a,u1a);
  vi2 = svasr_s16_z( pg,i2a,u2a);
  vi4 = svasr_s32_z( pg,i4a,u4a); 
  vi8 = svasr_s64_z( pg,i8a,u8a);
  dummy(vi1,	vi2,	vi4,	vi8);
}
void test_asr_m()
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
  vi1 = svasr_s8_m( pg,i1a,u1a);
  vi2 = svasr_s16_m( pg,i2a,u2a);
  vi4 = svasr_s32_m( pg,i4a,u4a); 
  vi8 = svasr_s64_m( pg,i8a,u8a);
  dummy(vi1,	vi2,	vi4,	vi8);
}
void test_asr_x()
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
  vi1 = svasr_s8_x( pg,i1a,u1a);
  vi2 = svasr_s16_x( pg,i2a,u2a);
  vi4 = svasr_s32_x( pg,i4a,u4a); 
  vi8 = svasr_s64_x( pg,i8a,u8a);
  dummy(vi1,	vi2,	vi4,	vi8);
}
void test_asr_n_z()
{
  svbool_t pg;
  svint64_t vi8;
  svint64_t i8a;
  vi8 = svasr_n_s64_z( pg,i8a,u8);
  dummy(vi8);
}
void test_asr_num_z()
{
  svbool_t pg;
  svint64_t vi8;
  svint64_t i8a;
  vi8 = svasr_n_s64_z( pg,i8a,8);
  dummy(vi8);
}
void test_asr_n_m()
{
  svbool_t pg;
  svint64_t vi8;
  svint64_t i8a;
  vi8 = svasr_n_s64_m( pg,i8a,u8);
  dummy(vi8);
}
void test_asr_num_m()
{
  svbool_t pg;
  svint64_t vi8;
  svint64_t i8a;
  vi8 = svasr_n_s64_m( pg,i8a,8);
  dummy(vi8);
}
void test_asr_n_x()
{
  svbool_t pg;
  svint64_t vi8;
  svint64_t i8a;
  vi8 = svasr_n_s64_x( pg,i8a,u8);
  dummy(vi8);
}
void test_asr_num_x()
{
  svbool_t pg;
  svint64_t vi8;
  svint64_t i8a;
  vi8 = svasr_n_s64_x( pg,i8a,8);
  dummy(vi8);
}
void test_asr_wide_z()
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
  vi1 = svasr_wide_s8_z( pg,i1a,u8a);
  vi2 = svasr_wide_s16_z( pg,i2a,u8a);
  vi4 = svasr_wide_s32_z( pg,i4a,u8a);
  dummy(vi1,	vi2,	vi4);
}
void test_asr_wide_m()
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
  vi1 = svasr_wide_s8_m( pg,i1a,u8a);
  vi2 = svasr_wide_s16_m( pg,i2a,u8a);
  vi4 = svasr_wide_s32_m( pg,i4a,u8a); 
  dummy(vi1,	vi2,	vi4);
}
void test_asr_wide_x()
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
  vi1 = svasr_wide_s8_x( pg,i1a,u8a);
  vi2 = svasr_wide_s16_x( pg,i2a,u8a);
  vi4 = svasr_wide_s32_x( pg,i4a,u8a);
  dummy(vi1,	vi2,	vi4);
}
void test_asr_wide_n_z()
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
  vi1 = svasr_n_s8_z( pg,i1a,u8);
  vi2 = svasr_n_s16_z( pg,i2a,u8);
  vi4 = svasr_n_s32_z( pg,i4a,u8);
  dummy(vi1,	vi2,	vi4);
}
void test_asr_wide_num_z()
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
  vi1 = svasr_n_s8_z( pg,i1a,8);
  vi2 = svasr_n_s16_z( pg,i2a,8);
  vi4 = svasr_n_s32_z( pg,i4a,8);
  dummy(vi1,	vi2,	vi4);
}
void test_asr_wide_n_m()
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
  vi1 = svasr_n_s8_m( pg,i1a,u8);
  vi2 = svasr_n_s16_m( pg,i2a,u8);
  vi4 = svasr_n_s32_m( pg,i4a,u8);
  dummy(vi1,	vi2,	vi4);
}
void test_asr_wide_num_m()
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
  vi1 = svasr_n_s8_m( pg,i1a,8);
  vi2 = svasr_n_s16_m( pg,i2a,8);
  vi4 = svasr_n_s32_m( pg,i4a,8);
  dummy(vi1,	vi2,	vi4);
}
void test_asr_wide_n_x()
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
  vi1 = svasr_n_s8_x( pg,i1a,u8);
  vi2 = svasr_n_s16_x( pg,i2a,u8);
  vi4 = svasr_n_s32_x( pg,i4a,u8);
  dummy(vi1,	vi2,	vi4);
}
void test_asr_wide_num_x()
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
  vi1 = svasr_n_s8_x( pg,i1a,8);
  vi2 = svasr_n_s16_x( pg,i2a,8);
  vi4 = svasr_n_s32_x( pg,i4a,8);
  dummy(vi1,	vi2,	vi4);
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

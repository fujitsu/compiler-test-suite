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
void test_abs_z()
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
  vi1 = svabs_s8_z( pg,i1a);
  vi2 = svabs_s16_z( pg,i2a);
  vi4 = svabs_s32_z( pg,i4a);
  vi8 = svabs_s64_z( pg,i8a);
  dummy(vi1,	vi2,	vi4,	vi8);
}
void test_abs_m()
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
  vi1 = svabs_s8_m( i1a,pg,i1b);
  vi2 = svabs_s16_m( i2a,pg,i2b);
  vi4 = svabs_s32_m( i4a,pg,i4b);
  vi8 = svabs_s64_m( i8a,pg,i8b);
  dummy(vi1,	vi2,	vi4,	vi8);
}
void test_abs_x()
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
  vi1 = svabs_s8_x( pg,i1a);
  vi2 = svabs_s16_x( pg,i2a);
  vi4 = svabs_s32_x( pg,i4a);
  vi8 = svabs_s64_x( pg,i8a);
  dummy(vi1,	vi2,	vi4,	vi8);
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

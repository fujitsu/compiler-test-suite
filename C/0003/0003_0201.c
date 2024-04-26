#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_clastb()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg, pg1, pg2, pg3, pg4, pg5, pg6;
svbool_t pg7, pg8, pg9, pg10, pg11, pg12;
svint8_t i1a,i1b,i1c;
svint16_t i2a,i2b,i2c;
svint32_t i4a,i4b,i4c;
svint64_t i8a,i8b,i8c;
svuint8_t u1a,u1b,u1c;
svuint16_t u2a,u2b,u2c;
svuint32_t u4a,u4b,u4c;
svuint64_t u8a,u8b,u8c;
svfloat32_t r4a,r4b,r4c;
svfloat64_t r8a,r8b,r8c;
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
  vi1 = svclastb_s8( pg,i1a,i1b);
  vi2 = svclastb_s16( pg,i2a,i2b);
  vi4 = svclastb_s32( pg,i4a,i4b);
  vi8 = svclastb_s64( pg,i8a,i8b);
  vu1 = svclastb_u8( pg,u1a,u1b);
  vu2 = svclastb_u16( pg,u2a,u2b);
  vu4 = svclastb_u32( pg,u4a,u4b);
  vu8 = svclastb_u64( pg,u8a,u8b);
  vr4 = svclastb_f32( pg,r4a,r4b);
  vr8 = svclastb_f64( pg,r8a,r8b);
}
void test_clastb_n()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg, pg1, pg2, pg3, pg4, pg5, pg6;
svbool_t pg7, pg8, pg9, pg10, pg11, pg12;
svint8_t i1a,i1b,i1c;
svint16_t i2a,i2b,i2c;
svint32_t i4a,i4b,i4c;
svint64_t i8a,i8b,i8c;
svuint8_t u1a,u1b,u1c;
svuint16_t u2a,u2b,u2c;
svuint32_t u4a,u4b,u4c;
svuint64_t u8a,u8b,u8c;
svfloat32_t r4a,r4b,r4c;
svfloat64_t r8a,r8b,r8c;
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
  i1 = svclastb_n_s8( pg,i1,i1b);
  i2 = svclastb_n_s16( pg,i2,i2b);
  i4 = svclastb_n_s32( pg,i4,i4b);
  i8 = svclastb_n_s64( pg,i8,i8b);
  u1 = svclastb_n_u8( pg,u1,u1b);
  u2 = svclastb_n_u16( pg,u2,u2b);
  u4 = svclastb_n_u32( pg,u4,u4b);
  u8 = svclastb_n_u64( pg,u8,u8b);
  r4 = svclastb_n_f32( pg,r4,r4b);
  r8 = svclastb_n_f64( pg,r8,r8b);
  dummy(i1,	i2,	i4,	i8);
  dummy(u1,	u2,	u4,	u8);
  dummy(r4,r8);
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

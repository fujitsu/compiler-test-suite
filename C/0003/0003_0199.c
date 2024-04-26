#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_lastb()
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
  i1 = svlastb_s8( pg,i1a);
  i2 = svlastb_s16( pg,i2a);
  i4 = svlastb_s32( pg,i4a);
  i8 = svlastb_s64( pg,i8a);
  dummy(i1,	i2,	i4,	i8);
  u1 = svlastb_u8( pg,u1a);
  u2 = svlastb_u16( pg,u2a);
  u4 = svlastb_u32( pg,u4a);
  u8 = svlastb_u64( pg,u8a);
  r4 = svlastb_f32( pg,r4a);
  r8 = svlastb_f64( pg,r8a);
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

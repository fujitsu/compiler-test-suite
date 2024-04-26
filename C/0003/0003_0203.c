#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_splice()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint32_t vi41,vi42;
svint64_t vi8;
svint64_t vi81,vi82;
svuint8_t vu1;
svuint16_t vu2;
svuint32_t vu4;
svuint32_t vu41,vu42;
svuint64_t vu8;
svuint64_t vu81,vu82;
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
  vi1 = svsplice_s8( pg,i1a,i1b);
  vi2 = svsplice_s16( pg,i2a,i2b);
  vi4 = svsplice_s32( pg,i4a,i4b);
  vi8 = svsplice_s64( pg,i8a,i8b);
  vu1 = svsplice_u8( pg,u1a,u1b);
  vu2 = svsplice_u16( pg,u2a,u2b);
  vu4 = svsplice_u32( pg,u4a,u4b);
  vu8 = svsplice_u64( pg,u8a,u8b);
  vr4 = svsplice_f32( pg,r4a,r4b);
  vr8 = svsplice_f64( pg,r8a,r8b);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
  dummy(vr4,vr8);
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

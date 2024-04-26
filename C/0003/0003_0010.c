#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_whilelt()
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
svbool_t pg13, pg14, pg15, pg16;
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
signed int i41,i42;
signed long long i8;
signed long long i81,i82;
unsigned char u1;
unsigned short u2;
unsigned int u4;
signed int u41,u42;
unsigned long long u8;
unsigned long long u81,u82;
float r4;
double r8;
  pg1 = svwhilelt_b8_s32( i41,i42);
  pg2 = svwhilelt_b16_s32( i41,i42);
  pg3 = svwhilelt_b32_s32( i41,i42); 
  pg4 = svwhilelt_b64_s32( i41,i42);
  pg5 = svwhilelt_b8_u32( u41,u42);
  pg6 = svwhilelt_b16_u32( u41,u42);
  pg7 = svwhilelt_b32_u32( u41,u42); 
  pg8 = svwhilelt_b64_u32( u41,u42);
  pg9 = svwhilelt_b8_s64( i81,i82);
  pg10 = svwhilelt_b16_s64( i81,i82);
  pg11 = svwhilelt_b32_s64( i81,i82); 
  pg12 = svwhilelt_b64_s64( i81,i82);
  pg13 = svwhilelt_b8_u64( u81,u82);
  pg14 = svwhilelt_b16_u64( u81,u82);
  pg15 = svwhilelt_b32_u64( u81,u82); 
  pg16 = svwhilelt_b64_u64( u81,u82);
  dummy(pg1,	pg2,	pg3,	pg4,	pg5,	pg6,	pg7,	pg8);
  dummy(pg9,	pg10,	pg11,	pg12,	pg13,	pg14,	pg15,	pg16);
}
int main()
{
  return 0;
}
void dummy() {};

#else
int main() {
return 0;
}
#endif

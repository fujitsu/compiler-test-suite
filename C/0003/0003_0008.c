#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy();
#include <arm_sve.h>
void test_cmpge()
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
  pg1 = svcmpge_s8( pg,i1a,i1b);
  pg2 = svcmpge_s16( pg,i2a,i2b);
  pg3 = svcmpge_s32( pg,i4a,i4b); 
  pg4 = svcmpge_s64( pg,i8a,i8b);
  dummy( pg1,	  pg2,	  pg3,	  pg4);
  pg5 = svcmpge_u8( pg,u1a,u1b);
  pg6 = svcmpge_u16( pg,u2a,u2b);
  pg7 = svcmpge_u32( pg,u4a,u4b);
  pg8 = svcmpge_u64( pg,u8a,u8b);
  dummy( pg5,	  pg6, pg7,pg8);
}
void test_cmpge_n()
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
  pg1 = svcmpge_n_s64( pg,i8a,i8);
  pg2 = svcmpge_n_u64( pg,u8a,u8);
  pg3 = svcmpge_n_s64( pg,i8a,8);
  dummy( pg1,	  pg2,	  pg3);
  pg4 = svcmpge_n_u64( pg,u8a,8);
  pg5 = svcmpge_n_s64( pg,i8a,0);
  pg6 = svcmpge_n_u64( pg,u8a,0);
  dummy( pg4,	  pg5,	  pg6);
}
void test_cmpge_wide()
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
  pg1 = svcmpge_wide_s8( pg,i1a,i8b);
  pg2 = svcmpge_wide_s16( pg,i2a,i8b);
  pg3 = svcmpge_wide_s32( pg,i4a,i8b);
  pg4 = svcmpge_wide_u8( pg,u1a,u8b);
  pg5 = svcmpge_wide_u16( pg,u2a,u8b);
  pg6 = svcmpge_wide_u32( pg,u4a,u8b);
  dummy( pg1,	  pg2,	  pg3,	  pg4,	  pg5,	  pg6);
}
void test_cmpge_wide_n()
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
  pg1 = svcmpge_n_s8( pg,i1a,i8);
  pg2 = svcmpge_n_s16( pg,i2a,i8);
  pg3 = svcmpge_n_s32( pg,i4a,i8);
  pg4 = svcmpge_n_u8( pg,u1a,u8);
  pg5 = svcmpge_n_u16( pg,u2a,u8);
  pg6 = svcmpge_n_u32( pg,u4a,u8);
  pg7 = svcmpge_n_s8( pg,i1a,8);
  pg8 = svcmpge_n_s16( pg,i2a,8);
  pg9 = svcmpge_n_s32( pg,i4a,8);
  pg10 = svcmpge_n_u8( pg,u1a,8);
  pg11 = svcmpge_n_u16( pg,u2a,8);
  pg12 = svcmpge_n_u32( pg,u4a,8);
  dummy( pg1,	  pg2,	  pg3,	  pg4,	  pg5,	  pg6);
  dummy( pg7,	  pg8,	  pg9,	  pg10,	  pg11,	  pg12);
}
int main()
{
  return 0;
}
void dummy()
{

}
#else
int main() {
return 0;
}
#endif

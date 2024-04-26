#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_cnt_z()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint8_t vu11,vu12;
svuint16_t vu2;
svuint16_t vu21,vu22;
svuint32_t vu4;
svuint32_t vu41,vu42,vu43;
svuint64_t vu8;
svuint64_t vu81,vu82,vu83;
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
  vu11 = svcnt_s8_z( pg,i1a);
  vu21 = svcnt_s16_z( pg,i2a);
  vu41 = svcnt_s32_z( pg,i4a); 
  vu81 = svcnt_s64_z( pg,i8a);
  dummy(vu11, vu21, vu41, vu81);
  vu12 = svcnt_u8_z( pg,u1a);
  vu22 = svcnt_u16_z( pg,u2a);
  vu42 = svcnt_u32_z( pg,u4a); 
  vu82 = svcnt_u64_z( pg,u8a);
  vu43 = svcnt_f32_z( pg,r4a);
  vu83 = svcnt_f64_z( pg,r8a);
  dummy(vu12, vu22, vu42, vu82, vu43, vu83);
}
void test_cnt_m()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint8_t vu11,vu12;
svuint16_t vu2;
svuint16_t vu21,vu22;
svuint32_t vu4;
svuint32_t vu41,vu42,vu43;
svuint64_t vu8;
svuint64_t vu81,vu82,vu83;
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
  vu11 = svcnt_s8_m( u1a,pg,i1a);
  vu21 = svcnt_s16_m( u2a,pg,i2a);
  vu41 = svcnt_s32_m( u4a,pg,i4a); 
  vu81 = svcnt_s64_m( u8a,pg,i8a);
  dummy(vu11, vu21, vu41, vu81);
  vu12 = svcnt_u8_m( u1a,pg,u1b);
  vu22 = svcnt_u16_m( u2a,pg,u2b);
  vu42 = svcnt_u32_m( u4a,pg,u4b); 
  vu82 = svcnt_u64_m( u8a,pg,u8b);
  vu43 = svcnt_f32_m( u4a,pg,r4a);
  vu83 = svcnt_f64_m( u8a,pg,r8a);
  dummy(vu12, vu22, vu42, vu82, vu43, vu83);
}
void test_cnt_x()
{
svint8_t vi1;
svint16_t vi2;
svint32_t vi4;
svint64_t vi8;
svuint8_t vu1;
svuint8_t vu11,vu12;
svuint16_t vu2;
svuint16_t vu21,vu22;
svuint32_t vu4;
svuint32_t vu41,vu42,vu43;
svuint64_t vu8;
svuint64_t vu81,vu82,vu83;
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
  vu11 = svcnt_s8_x( pg,i1a);
  vu21 = svcnt_s16_x( pg,i2a);
  vu41 = svcnt_s32_x( pg,i4a); 
  vu81 = svcnt_s64_x( pg,i8a);
  vu12 = svcnt_u8_x( pg,u1a);
  vu22 = svcnt_u16_x( pg,u2a);
  vu42 = svcnt_u32_x( pg,u4a); 
  vu82 = svcnt_u64_x( pg,u8a);
  vu43 = svcnt_f32_x( pg,r4a);
  vu83 = svcnt_f64_x( pg,r8a);
  dummy(vu11, vu21, vu41, vu81, vu12, vu22, vu42, vu82, vu43, vu83);
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

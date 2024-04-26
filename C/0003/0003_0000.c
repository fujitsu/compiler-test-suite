#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
int dummy();


#include <arm_sve.h>

void test_addv()
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
svbool_t pg;
svint8_t i1a;
svint16_t i2a;
svint32_t i4a;
svint64_t i8a;
svuint8_t u1a;
svuint16_t u2a;
svuint32_t u4a;
svuint64_t u8a;
signed char i1;
signed short i2;
signed int i4;
signed long long i8s1,i8s2,i8s3,i8s4;
unsigned char u1;
unsigned short u2;
unsigned int u4;
unsigned long long u8s1,u8s2,u8s3,u8s4;
float r4;
double r8;
 
  i8s1 = svaddv_s8( pg,i1a);
  i8s2 = svaddv_s16( pg,i2a);
  i8s3 = svaddv_s32( pg,i4a);
  i8s4 = svaddv_s64( pg,i8a);
  dummy(i8s1,	i8s2,	i8s3,	i8s4);
  u8s1 = svaddv_u8( pg,u1a);
  u8s2 = svaddv_u16( pg,u2a);
  u8s3 = svaddv_u32( pg,u4a);
  u8s4 = svaddv_u64( pg,u8a);
  dummy(u8s1,	u8s2,	u8s3,	u8s4);
}
int main()
{
  return 0;
}
int dummy()
{
  return 0;
}

#else
int main() {
return 0;
}
#endif

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
float r4;
double r8;
void test_dup_lane()
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
unsigned char u1x,u1y;
unsigned short u2x,u2y;
unsigned int u4x,u4y,u4z;
unsigned long long u8x,u8y,u8z;
  vi1 = svdup_lane_s8( i1a,u1x);
  vi2 = svdup_lane_s16( i2a,u2x);
  vi4 = svdup_lane_s32( i4a,u4x);
  vi8 = svdup_lane_s64( i8a,u8x);
  vu1 = svdup_lane_u8( u1a,u1y);
  vu2 = svdup_lane_u16( u2a,u2y);
  vu4 = svdup_lane_u32( u4a,u4y);
  vu8 = svdup_lane_u64( u8a,u8y);
  vr4 = svdup_lane_f32( r4a,u4z);
  vr8 = svdup_lane_f64( r8a,u8z);
  dummy(vi1,	vi2,	vi4,	vi8);
  dummy(vu1,	vu2,	vu4,	vu8);
  dummy(vr4,vr8);
}

void test_dup_lane_num()
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
unsigned char u1x,u1y;
unsigned short u2x,u2y;
unsigned int u4x,u4y,u4z;
unsigned long long u8x,u8y,u8z;
  vi1 = svdup_lane_s8( i1a,1);
  vi2 = svdup_lane_s16( i2a,2);
  vi4 = svdup_lane_s32( i4a,3);
  vi8 = svdup_lane_s64( i8a,4);
  vu1 = svdup_lane_u8( u1a,5);
  vu2 = svdup_lane_u16( u2a,6);
  vu4 = svdup_lane_u32( u4a,7);
  vu8 = svdup_lane_u64( u8a,8);
  vr4 = svdup_lane_f32( r4a,9);
  vr8 = svdup_lane_f64( r8a,2);
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

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
unsigned long long u81,u82,u83,u84;
float r4;
double r8;
void test_reinterpret()
{
svint8_t i1a,i1b,i1c;
svint16_t i2a,i2b,i2c;
svint32_t i4a,i4b,i4c;
svint64_t i8a,i8b,i8c;
svuint8_t u1a,u1b,u1c;
svuint16_t u2a,u2b,u2c;
svuint32_t u4a,u4b,u4c;
svuint64_t u8a,u8b,u8c;
svfloat16_t r2a,r2b,r2c;
svfloat32_t r4a,r4b,r4c;
svfloat64_t r8a,r8b,r8c;
svint8_t vi1;
svint8_t vi11,vi12,vi13,vi14,vi15,vi16;
svint8_t vi17,vi18,vi19,vi110,vi111;
svint16_t vi2;
svint16_t vi21,vi22,vi23,vi24,vi25,vi26;
svint16_t vi27,vi28,vi29,vi210,vi211;
svint32_t vi4;
svint32_t vi41,vi42,vi43,vi44,vi45,vi46;
svint32_t vi47,vi48,vi49,vi410,vi411;
svint64_t vi8;
svint64_t vi81,vi82,vi83,vi84,vi85,vi86;
svint64_t vi87,vi88,vi89,vi810,vi811;
svuint8_t vu1;
svuint8_t vu11,vu12,vu13,vu14,vu15,vu16;
svuint8_t vu17,vu18,vu19,vu110,vu111;
svuint16_t vu2;
svuint16_t vu21,vu22,vu23,vu24,vu25,vu26;
svuint16_t vu27,vu28,vu29,vu210,vu211;
svuint32_t vu4;
svuint32_t vu41,vu42,vu43,vu44,vu45,vu46;
svuint32_t vu47,vu48,vu49,vu410,vu411;
svuint64_t vu8;
svuint64_t vu81,vu82,vu83,vu84,vu85,vu86;
svuint64_t vu87,vu88,vu89,vu810,vu811;
svfloat32_t vr4;
svfloat32_t vr41,vr42,vr43,vr44,vr45,vr46;
svfloat32_t vr47,vr48,vr49,vr410,vr411;
svfloat64_t vr8;
svfloat64_t vr81,vr82,vr83,vr84,vr85,vr86;
svfloat64_t vr87,vr88,vr89,vr810,vr811;
svbool_t pg,pga,pgb;
  vi11 = svreinterpret_s8_s8( i1a);
  vi12 = svreinterpret_s8_s16( i2a);
  vi13 = svreinterpret_s8_s32( i4a);
  vi14 = svreinterpret_s8_s64( i8a);
  vi15 = svreinterpret_s8_u8( u1a);
  vi16 = svreinterpret_s8_u16( u2a);
  vi17 = svreinterpret_s8_u32( u4a);
  vi18 = svreinterpret_s8_u64( u8a);
  vi110 = svreinterpret_s8_f32( r4a);
  vi111 = svreinterpret_s8_f64( r8a);
  dummy(vi11,
	vi12,
	vi13,
	vi14,
	vi15,
	vi16,
	vi17,
	vi18,
	vi110,
	vi111);
  vi21 = svreinterpret_s16_s8( i1a);
  vi22 = svreinterpret_s16_s16( i2a);
  vi23 = svreinterpret_s16_s32( i4a);
  vi24 = svreinterpret_s16_s64( i8a);
  vi25 = svreinterpret_s16_u8( u1a);
  vi26 = svreinterpret_s16_u16( u2a);
  vi27 = svreinterpret_s16_u32( u4a);
  vi28 = svreinterpret_s16_u64( u8a);
  vi210 = svreinterpret_s16_f32( r4a);
  vi211 = svreinterpret_s16_f64( r8a);
  dummy(vi21,
	vi22,
	vi23,
	vi24,
	vi25,
	vi26,
	vi27,
	vi28,
	vi210,
	vi211);
  vi41 = svreinterpret_s32_s8( i1a);
  vi42 = svreinterpret_s32_s16( i2a);
  vi43 = svreinterpret_s32_s32( i4a);
  vi44 = svreinterpret_s32_s64( i8a);
  vi45 = svreinterpret_s32_u8( u1a);
  vi46 = svreinterpret_s32_u16( u2a);
  vi47 = svreinterpret_s32_u32( u4a);
  vi48 = svreinterpret_s32_u64( u8a);
  vi410 = svreinterpret_s32_f32( r4a);
  vi411 = svreinterpret_s32_f64( r8a);
  dummy(vi41,
	vi42,
	vi43,
	vi44,
	vi45,
	vi46,
	vi47,
	vi48,
	vi410,
	vi411);
  vi81 = svreinterpret_s64_s8( i1a);
  vi82 = svreinterpret_s64_s16( i2a);
  vi83 = svreinterpret_s64_s32( i4a);
  vi84 = svreinterpret_s64_s64( i8a);
  vi85 = svreinterpret_s64_u8( u1a);
  vi86 = svreinterpret_s64_u16( u2a);
  vi87 = svreinterpret_s64_u32( u4a);
  vi88 = svreinterpret_s64_u64( u8a);
  vi810 = svreinterpret_s64_f32( r4a);
  vi811 = svreinterpret_s64_f64( r8a);
  dummy(vi81,
	vi82,
	vi83,
	vi84,
	vi85,
	vi86,
	vi87,
	vi88,
	vi810,
	vi811);
  vu11 = svreinterpret_u8_s8( i1a);
  vu12 = svreinterpret_u8_s16( i2a);
  vu13 = svreinterpret_u8_s32( i4a);
  vu14 = svreinterpret_u8_s64( i8a);
  vu15 = svreinterpret_u8_u8( u1a);
  vu16 = svreinterpret_u8_u16( u2a);
  vu17 = svreinterpret_u8_u32( u4a);
  vu18 = svreinterpret_u8_u64( u8a);
  vu110 = svreinterpret_u8_f32( r4a);
  vu111 = svreinterpret_u8_f64( r8a);
  dummy(vu11,
	vu12,
	vu13,
	vu14,
	vu15,
	vu16,
	vu17,
	vu18,
	vu110,
	vu111);
  vu21 = svreinterpret_u16_s8( i1a);
  vu22 = svreinterpret_u16_s16( i2a);
  vu23 = svreinterpret_u16_s32( i4a);
  vu24 = svreinterpret_u16_s64( i8a);
  vu25 = svreinterpret_u16_u8( u1a);
  vu26 = svreinterpret_u16_u16( u2a);
  vu27 = svreinterpret_u16_u32( u4a);
  vu28 = svreinterpret_u16_u64( u8a);
  vu210 = svreinterpret_u16_f32( r4a);
  vu211 = svreinterpret_u16_f64( r8a);
  dummy(vu21,
	vu22,
	vu23,
	vu24,
	vu25,
	vu26,
	vu27,
	vu28,
	vu210,
	vu211);
  vu41 = svreinterpret_u32_s8( i1a);
  vu42 = svreinterpret_u32_s16( i2a);
  vu43 = svreinterpret_u32_s32( i4a);
  vu44 = svreinterpret_u32_s64( i8a);
  vu45 = svreinterpret_u32_u8( u1a);
  vu46 = svreinterpret_u32_u16( u2a);
  vu47 = svreinterpret_u32_u32( u4a);
  vu48 = svreinterpret_u32_u64( u8a);
  vu410 = svreinterpret_u32_f32( r4a);
  vu411 = svreinterpret_u32_f64( r8a);
  dummy(vu41,
	vu42,
	vu43,
	vu44,
	vu45,
	vu46,
	vu47,
	vu48,
	vu410,
	vu411);
  vu81 = svreinterpret_u64_s8( i1a);
  vu82 = svreinterpret_u64_s16( i2a);
  vu83 = svreinterpret_u64_s32( i4a);
  vu84 = svreinterpret_u64_s64( i8a);
  vu85 = svreinterpret_u64_u8( u1a);
  vu86 = svreinterpret_u64_u16( u2a);
  vu87 = svreinterpret_u64_u32( u4a);
  vu88 = svreinterpret_u64_u64( u8a);
  vu810 = svreinterpret_u64_f32( r4a);
  vu811 = svreinterpret_u64_f64( r8a);
  dummy(vu81,
	vu82,
	vu83,
	vu84,
	vu85,
	vu86,
	vu87,
	vu88,
	vu810,
	vu811);
  
  vr41 = svreinterpret_f32_s8( i1a);
  vr42 = svreinterpret_f32_s16( i2a);
  vr43 = svreinterpret_f32_s32( i4a);
  vr44 = svreinterpret_f32_s64( i8a);
  vr45 = svreinterpret_f32_u8( u1a);
  vr46 = svreinterpret_f32_u16( u2a);
  vr47 = svreinterpret_f32_u32( u4a);
  vr48 = svreinterpret_f32_u64( u8a);
  vr410 = svreinterpret_f32_f32( r4a);
  vr411 = svreinterpret_f32_f64( r8a);
  dummy(vr41,
	vr42,
	vr43,
	vr44,
	vr45,
	vr46,
	vr47,
	vr48,
	vr410,
	vr411);
  vr81 = svreinterpret_f64_s8( i1a);
  vr82 = svreinterpret_f64_s16( i2a);
  vr83 = svreinterpret_f64_s32( i4a);
  vr84 = svreinterpret_f64_s64( i8a);
  vr85 = svreinterpret_f64_u8( u1a);
  vr86 = svreinterpret_f64_u16( u2a);
  vr87 = svreinterpret_f64_u32( u4a);
  vr88 = svreinterpret_f64_u64( u8a);
  vr810 = svreinterpret_f64_f32( r4a);
  vr811 = svreinterpret_f64_f64( r8a);
  dummy(vr81,
	vr82,
	vr83,
	vr84,
	vr85,
	vr86,
	vr87,
	vr88,
	vr810,
	vr811);
}
void dummy() {};
int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif

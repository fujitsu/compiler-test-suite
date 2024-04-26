#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_ld1_imm( )
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svuint32_t u32base1,u32base2, u32base3;
  svuint64_t u64base1,u64base2, u64base3;
  
  vi4 = svld1_gather_u32base_offset_s32(  pg, u32base1, 4);
  vi8 = svld1_gather_u64base_offset_s64(  pg, u64base1, 8);
  vu4 = svld1_gather_u32base_offset_u32(  pg, u32base2, 0);
  vu8 = svld1_gather_u64base_offset_u64(  pg, u64base2, 16);
  vr4 = svld1_gather_u32base_offset_f32(  pg, u32base3, 32);
  vr8 = svld1_gather_u64base_offset_f64(  pg, u64base3, 64);
  dummy(vi4,	vi8,	vu4,	vu8);
  dummy(vr4,	vr8);
}
void test_ld1_dup( )
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svuint32_t u32base1,u32base2, u32base3;
  svuint64_t u64base1,u64base2, u64base3;
  signed long long i8s1,i8s2,i8s3,i8s4;
  
  vi4 = svld1_gather_u32base_offset_s32(  pg, u32base1, 1);
  vi8 = svld1_gather_u64base_offset_s64(  pg, u64base1, 2);
  vu4 = svld1_gather_u32base_offset_u32(  pg, u32base2, -8);
  vu8 = svld1_gather_u64base_offset_u64(  pg, u64base2, -16);
  vr4 = svld1_gather_u32base_offset_f32(  pg, u32base3, i8s1);
  vr8 = svld1_gather_u64base_offset_f64(  pg, u64base3, i8s4);
  dummy(vi4,	vi8,	vu4,	vu8);
  dummy(vr4,	vr8);
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

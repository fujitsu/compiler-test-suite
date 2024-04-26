#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_ld1_var(svuint32_t u32base1, svuint32_t u32base2, svuint32_t u32base3,
		  svuint64_t u64base1, svuint64_t u64base2, svuint64_t u64base3)
{
svint32_t vi4;
svint64_t vi8;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
signed long long i8a,i8b,i8c;
signed long long i8x,i8y,i8z;
  
  vi4 = svld1_gather_u32base_index_s32(  pg, u32base1, i8a);
  vi8 = svld1_gather_u64base_index_s64(  pg, u64base1, i8b);
  vu4 = svld1_gather_u32base_index_u32(  pg, u32base2, i8c);
  vu8 = svld1_gather_u64base_index_u64(  pg, u64base2, i8x);
  vr4 = svld1_gather_u32base_index_f32(  pg, u32base3, i8y);
  vr8 = svld1_gather_u64base_index_f64(  pg, u64base3, i8z);
  dummy(vi4,	vi8,	vu4,	vu8);
  dummy(vr4,	vr8);
}
void test_ld1_num(svuint32_t u32base1, svuint32_t u32base2, svuint32_t u32base3,
		  svuint64_t u64base1, svuint64_t u64base2, svuint64_t u64base3)
{  
svint32_t vi4;
svint64_t vi8;
svuint32_t vu4;
svuint64_t vu8;
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
signed long long i8a,i8b,i8c;
signed long long i8x,i8y,i8z;
  vi4 = svld1_gather_u32base_index_s32(  pg, u32base1, 0);
  vi8 = svld1_gather_u64base_index_s64(  pg, u64base1, 64);
  vu4 = svld1_gather_u32base_index_u32(  pg, u32base2, 128);
  vu8 = svld1_gather_u64base_index_u64(  pg, u64base2, 128);
  vr4 = svld1_gather_u32base_index_f32(  pg, u32base3, 64);
  vr8 = svld1_gather_u64base_index_f64(  pg, u64base3, 0);
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

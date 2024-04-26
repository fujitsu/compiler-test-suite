#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_ld1_s(const int32_t  *bases32, const  int64_t *bases64,
	      const uint32_t *baseu32, const uint64_t *baseu64,
	      const float *basef32, const double *basef64)
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svint32_t indexs32;
  svint64_t indexs64;
  svuint32_t indexu32;
  svuint64_t indexu64;
  vi4  = svld1_gather_s32index_s32( pg, bases32, indexs32);
  vi8  = svld1_gather_s64index_s64( pg, bases64, indexs64);
  vu4 = svld1_gather_s32index_u32( pg, baseu32, indexs32);
  vu8 = svld1_gather_s64index_u64( pg, baseu64, indexs64);
  vr4  = svld1_gather_s32index_f32( pg, basef32, indexs32);
  vr8  = svld1_gather_s64index_f64( pg, basef64, indexs64);
  dummy(vi4,	vi8,	vu4,	vu8);
  dummy(vr4,	vr8);
}
void test_ld1_u(const int32_t  *bases32, const  int64_t *bases64,
	      const uint32_t *baseu32, const uint64_t *baseu64,
	      const float *basef32, const double *basef64)
{
  svbool_t pg;
  svint32_t vi4;
  svint64_t vi8;
  svuint32_t vu4;
  svuint64_t vu8;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svint32_t indexs32;
  svint64_t indexs64;
  svuint32_t indexu32;
  svuint64_t indexu64;
  vi4  = svld1_gather_u32index_s32( pg, bases32, indexu32);
  vi8  = svld1_gather_u64index_s64( pg, bases64, indexu64);
  vu4 = svld1_gather_u32index_u32( pg, baseu32, indexu32);
  vu8 = svld1_gather_u64index_u64( pg, baseu64, indexu64);
  vr4  = svld1_gather_u32index_f32( pg, basef32, indexu32);
  vr8  = svld1_gather_u64index_f64( pg, basef64, indexu64);
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

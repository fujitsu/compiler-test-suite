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
  svint32_t offsets32;
  svint64_t offsets64;
  svuint32_t offsetu32;
  svuint64_t offsetu64;
  vi4  = svld1_gather_s32offset_s32( pg, bases32, offsets32);
  vi8  = svld1_gather_s64offset_s64( pg, bases64, offsets64);
  vu4 = svld1_gather_s32offset_u32( pg, baseu32, offsets32);
  vu8 = svld1_gather_s64offset_u64( pg, baseu64, offsets64);
  vr4  = svld1_gather_s32offset_f32( pg, basef32, offsets32);
  vr8  = svld1_gather_s64offset_f64( pg, basef64, offsets64);
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
  svint32_t offsets32;
  svint64_t offsets64;
  svuint32_t offsetu32;
  svuint64_t offsetu64;
  vi4  = svld1_gather_u32offset_s32( pg, bases32, offsetu32);
  vi8  = svld1_gather_u64offset_s64( pg, bases64, offsetu64);
  vu4 = svld1_gather_u32offset_u32( pg, baseu32, offsetu32);
  vu8 = svld1_gather_u64offset_u64( pg, baseu64, offsetu64);
  vr4  = svld1_gather_u32offset_f32( pg, basef32, offsetu32);
  vr8  = svld1_gather_u64offset_f64( pg, basef64, offsetu64);
  dummy(vi4,	vi8,	vu4,	vu8);
  dummy(vr4,	vr8);
}
void test_ld1_num(const int32_t  *bases32, const  int64_t *bases64,
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
  svint32_t offsets32;
  svint64_t offsets64;
  svint32_t offsetu32;
  svint64_t offsetu64;
  offsets32 = svdup_n_s32(0);
  offsetu32 = svdup_n_s32(64);
  offsets64 = svdup_n_s64(128);
  offsetu64 = svdup_n_s64(256);
  vi4  = svld1_gather_s32offset_s32( pg, bases32, offsets32);
  vi8  = svld1_gather_s64offset_s64( pg, bases64, offsets64);
  vu4 = svld1_gather_s32offset_u32( pg, baseu32, offsetu32);
  vu8 = svld1_gather_s64offset_u64( pg, baseu64, offsets64);
  vr4  = svld1_gather_s32offset_f32( pg, basef32, offsetu32);
  vr8  = svld1_gather_s64offset_f64( pg, basef64, offsetu64);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s32_s32(svbool_t pg, const int32_t *base, svint32_t offset)
{
  svint32_t r;
  r = svld1_gather_s32offset_s32(pg, base, offset);
  dummy(r);
}
void test_s64_s64(svbool_t pg, const int64_t *base, svint64_t offset)
{
  svint64_t r;
  r = svld1_gather_s64offset_s64(pg, base, offset);
  dummy(r);
}
void test_s32_u32(svbool_t pg, const uint32_t *base, svint32_t offset)
{
  svuint32_t r;
  r = svld1_gather_s32offset_u32(pg, base, offset);
  dummy(r);
}
void test_s64_u64(svbool_t pg, const uint64_t *base, svint64_t offset)
{
  svuint64_t r;
  r = svld1_gather_s64offset_u64(pg, base, offset);
  dummy(r);
}
void test_s32_f32(svbool_t pg, const float32_t *base, svint32_t offset)
{
  svfloat32_t r;
  r = svld1_gather_s32offset_f32(pg, base, offset);
  dummy(r);
}
void test_s64_f64(svbool_t pg, const float64_t *base, svint64_t offset)
{
  svfloat64_t r;
  r = svld1_gather_s64offset_f64(pg, base, offset);
  dummy(r);
}
void test_u32_s32(svbool_t pg, const int32_t *base, svuint32_t offset)
{
  svint32_t r;
  r = svld1_gather_u32offset_s32(pg, base, offset);
  dummy(r);
}
void test_u64_s64(svbool_t pg, const int64_t *base, svuint64_t offset)
{
  svint64_t r;
  r = svld1_gather_u64offset_s64(pg, base, offset);
  dummy(r);
}
void test_u32_u32(svbool_t pg, const uint32_t *base, svuint32_t offset)
{
  svuint32_t r;
  r = svld1_gather_u32offset_u32(pg, base, offset);
  dummy(r);
}
void test_u64_u64(svbool_t pg, const uint64_t *base, svuint64_t offset)
{
  svuint64_t r;
  r = svld1_gather_u64offset_u64(pg, base, offset);
  dummy(r);
}
void test_u32_f32(svbool_t pg, const float32_t *base, svuint32_t offset)
{
  svfloat32_t r;
  r = svld1_gather_u32offset_f32(pg, base, offset);
  dummy(r);
}
void test_u64_f64(svbool_t pg, const float64_t *base, svuint64_t offset)
{
  svfloat64_t r;
  r = svld1_gather_u64offset_f64(pg, base, offset);
  dummy(r);
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

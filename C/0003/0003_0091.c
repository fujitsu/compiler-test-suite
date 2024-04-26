#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_u32_s32(svbool_t pg, const svuint32_t base, int64_t index)
{
  svint32_t r;
  r = svld1_gather_u32base_index_s32(pg, base, index);
  dummy(r);
}
void test_u64_s64(svbool_t pg, const svuint64_t base, int64_t index)
{
  svint64_t r;
  r = svld1_gather_u64base_index_s64(pg, base, index);
  dummy(r);
}
void test_u32_u32(svbool_t pg, const svuint32_t base, int64_t index)
{
  svuint32_t r;
  r = svld1_gather_u32base_index_u32(pg, base, index);
  dummy(r);
}
void test_u64_u64(svbool_t pg, const svuint64_t base, int64_t index)
{
  svuint64_t r;
  r = svld1_gather_u64base_index_u64(pg, base, index);
  dummy(r);
}
void test_u32_f32(svbool_t pg, const svuint32_t base, int64_t index)
{
  svfloat32_t r;
  r = svld1_gather_u32base_index_f32(pg, base, index);
  dummy(r);
}
void test_u64_f64(svbool_t pg, const svuint64_t base, int64_t index)
{
  svfloat64_t r;
  r = svld1_gather_u64base_index_f64(pg, base, index);
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

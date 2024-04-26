#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_u32_s32(svbool_t pg, svuint32_t base, int64_t offset, svint32_t data)
{
   svst1_scatter_u32base_offset_s32(pg, base, offset, data);
}
void test_u64_s64(svbool_t pg, svuint64_t base, int64_t offset, svint64_t data)
{
   svst1_scatter_u64base_offset_s64(pg, base, offset, data);
}
void test_u32_u32(svbool_t pg, svuint32_t base, int64_t offset, svuint32_t data)
{
   svst1_scatter_u32base_offset_u32(pg, base, offset, data);
}
void test_u64_u64(svbool_t pg, svuint64_t base, int64_t offset, svuint64_t data)
{
   svst1_scatter_u64base_offset_u64(pg, base, offset, data);
}
void test_u32_f32(svbool_t pg, svuint32_t base, int64_t offset, svfloat32_t data)
{
   svst1_scatter_u32base_offset_f32(pg, base, offset, data);
}
void test_u64_f64(svbool_t pg, svuint64_t base, int64_t offset, svfloat64_t data)
{
   svst1_scatter_u64base_offset_f64(pg, base, offset, data);
}
int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif

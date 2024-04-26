#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_u32_s32(svbool_t pg, svuint32_t base, int64_t index, svint32_t data)
{
   svst1_scatter_u32base_index_s32(pg, base, index, data);
}
void test_u64_s64(svbool_t pg, svuint64_t base, int64_t index, svint64_t data)
{
   svst1_scatter_u64base_index_s64(pg, base, index, data);
}
void test_u32_u32(svbool_t pg, svuint32_t base, int64_t index, svuint32_t data)
{
   svst1_scatter_u32base_index_u32(pg, base, index, data);
}
void test_u64_u64(svbool_t pg, svuint64_t base, int64_t index, svuint64_t data)
{
   svst1_scatter_u64base_index_u64(pg, base, index, data);
}
void test_u32_f32(svbool_t pg, svuint32_t base, int64_t index, svfloat32_t data)
{
   svst1_scatter_u32base_index_f32(pg, base, index, data);
}
void test_u64_f64(svbool_t pg, svuint64_t base, int64_t index, svfloat64_t data)
{
   svst1_scatter_u64base_index_f64(pg, base, index, data);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_s32_s32(svbool_t pg, int32_t *base, svint32_t index, svint32_t data)
{
   svst1_scatter_s32index_s32(pg, base, index, data);
}
void test_s64_s64(svbool_t pg, int64_t *base, svint64_t index, svint64_t data)
{
   svst1_scatter_s64index_s64(pg, base, index, data);
}
void test_s32_u32(svbool_t pg, uint32_t *base, svint32_t index, svuint32_t data)
{
   svst1_scatter_s32index_u32(pg, base, index, data);
}
void test_s64_u64(svbool_t pg, uint64_t *base, svint64_t index, svuint64_t data)
{
   svst1_scatter_s64index_u64(pg, base, index, data);
}
void test_s32_f32(svbool_t pg, float32_t *base, svint32_t index, svfloat32_t data)
{
   svst1_scatter_s32index_f32(pg, base, index, data);
}
void test_s64_f64(svbool_t pg, float64_t *base, svint64_t index, svfloat64_t data)
{
   svst1_scatter_s64index_f64(pg, base, index, data);
}
void test_u32_s32(svbool_t pg, int32_t *base, svuint32_t index, svint32_t data)
{
   svst1_scatter_u32index_s32(pg, base, index, data);
}
void test_u64_s64(svbool_t pg, int64_t *base, svuint64_t index, svint64_t data)
{
   svst1_scatter_u64index_s64(pg, base, index, data);
}
void test_u32_u32(svbool_t pg, uint32_t *base, svuint32_t index, svuint32_t data)
{
   svst1_scatter_u32index_u32(pg, base, index, data);
}
void test_u64_u64(svbool_t pg, uint64_t *base, svuint64_t index, svuint64_t data)
{
   svst1_scatter_u64index_u64(pg, base, index, data);
}
void test_u32_f32(svbool_t pg, float32_t *base, svuint32_t index, svfloat32_t data)
{
   svst1_scatter_u32index_f32(pg, base, index, data);
}
void test_u64_f64(svbool_t pg, float64_t *base, svuint64_t index, svfloat64_t data)
{
   svst1_scatter_u64index_f64(pg, base, index, data);
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

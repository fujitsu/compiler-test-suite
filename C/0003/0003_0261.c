#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_s32_s32(svbool_t pg, int32_t *base, svint32_t offset, svint32_t data)
{
   svst1_scatter_s32offset_s32(pg, base, offset, data);
}
void test_s64_s64(svbool_t pg, int64_t *base, svint64_t offset, svint64_t data)
{
   svst1_scatter_s64offset_s64(pg, base, offset, data);
}
void test_s32_u32(svbool_t pg, uint32_t *base, svint32_t offset, svuint32_t data)
{
   svst1_scatter_s32offset_u32(pg, base, offset, data);
}
void test_s64_u64(svbool_t pg, uint64_t *base, svint64_t offset, svuint64_t data)
{
   svst1_scatter_s64offset_u64(pg, base, offset, data);
}
void test_s32_f32(svbool_t pg, float32_t *base, svint32_t offset, svfloat32_t data)
{
   svst1_scatter_s32offset_f32(pg, base, offset, data);
}
void test_s64_f64(svbool_t pg, float64_t *base, svint64_t offset, svfloat64_t data)
{
   svst1_scatter_s64offset_f64(pg, base, offset, data);
}
void test_u32_s32(svbool_t pg, int32_t *base, svuint32_t offset, svint32_t data)
{
   svst1_scatter_u32offset_s32(pg, base, offset, data);
}
void test_u64_s64(svbool_t pg, int64_t *base, svuint64_t offset, svint64_t data)
{
   svst1_scatter_u64offset_s64(pg, base, offset, data);
}
void test_u32_u32(svbool_t pg, uint32_t *base, svuint32_t offset, svuint32_t data)
{
   svst1_scatter_u32offset_u32(pg, base, offset, data);
}
void test_u64_u64(svbool_t pg, uint64_t *base, svuint64_t offset, svuint64_t data)
{
   svst1_scatter_u64offset_u64(pg, base, offset, data);
}
void test_u32_f32(svbool_t pg, float32_t *base, svuint32_t offset, svfloat32_t data)
{
   svst1_scatter_u32offset_f32(pg, base, offset, data);
}
void test_u64_f64(svbool_t pg, float64_t *base, svuint64_t offset, svfloat64_t data)
{
   svst1_scatter_u64offset_f64(pg, base, offset, data);
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

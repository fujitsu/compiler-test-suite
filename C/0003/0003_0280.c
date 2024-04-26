#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_s64_s64(svbool_t pg, int32_t *base, svint64_t offset, svint64_t data)
{
   svst1w_scatter_s64offset_s64(pg, base, offset, data);
}
void test_s64_u64(svbool_t pg, uint32_t *base, svint64_t offset, svuint64_t data)
{
   svst1w_scatter_s64offset_u64(pg, base, offset, data);
}
void test_u64_s64(svbool_t pg, int32_t *base, svuint64_t offset, svint64_t data)
{
   svst1w_scatter_u64offset_s64(pg, base, offset, data);
}
void test_u64_u64(svbool_t pg, uint32_t *base, svuint64_t offset, svuint64_t data)
{
   svst1w_scatter_u64offset_u64(pg, base, offset, data);
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

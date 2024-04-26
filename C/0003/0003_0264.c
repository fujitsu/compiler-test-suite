#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_u32_s32(svbool_t pg, svuint32_t base, svint32_t data)
{
   svst1b_scatter_u32base_s32(pg, base, data);
}
void test_u64_s64(svbool_t pg, svuint64_t base, svint64_t data)
{
   svst1b_scatter_u64base_s64(pg, base, data);
}
void test_u32_u32(svbool_t pg, svuint32_t base, svuint32_t data)
{
   svst1b_scatter_u32base_u32(pg, base, data);
}
void test_u64_u64(svbool_t pg, svuint64_t base, svuint64_t data)
{
   svst1b_scatter_u64base_u64(pg, base, data);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_u64_s64(svbool_t pg, svuint64_t base, int64_t index, svint64_t data)
{
   svst1w_scatter_u64base_index_s64(pg, base, index, data);
}
void test_u64_u64(svbool_t pg, svuint64_t base, int64_t index, svuint64_t data)
{
   svst1w_scatter_u64base_index_u64(pg, base, index, data);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>

void test_s64(svbool_t pg, int32_t *base, svint64_t data)
{
  svst1w_s64(pg, base, data);
}

void test_u64(svbool_t pg, uint32_t *base, svuint64_t data)
{
  svst1w_u64(pg, base, data);
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

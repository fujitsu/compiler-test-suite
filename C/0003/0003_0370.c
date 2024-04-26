#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>

void test_s32(svbool_t pg, int16_t *base, svint32_t data)
{
  svst1h_s32(pg, base, data);
}

void test_s64(svbool_t pg, int16_t *base, svint64_t data)
{
  svst1h_s64(pg, base, data);
}

void test_u32(svbool_t pg, uint16_t *base, svuint32_t data)
{
  svst1h_u32(pg, base, data);
}

void test_u64(svbool_t pg, uint16_t *base, svuint64_t data)
{
  svst1h_u64(pg, base, data);
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

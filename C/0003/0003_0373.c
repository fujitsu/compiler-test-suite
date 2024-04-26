#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>

void test_s64(svbool_t pg, int32_t *base, int64_t vnum, svint64_t data)
{
  svst1w_vnum_s64(pg, base, vnum, data);
}

void test_u64(svbool_t pg, uint32_t *base, int64_t vnum, svuint64_t data)
{
  svst1w_vnum_u64(pg, base, vnum, data);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_u32(svbool_t pg, svuint32_t base)
{
  svprfh_gather_u32base(pg, base, SV_PSTL2STRM);
}
void test_u64(svbool_t pg, svuint64_t base)
{
  svprfh_gather_u64base(pg, base, SV_PSTL3KEEP);
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

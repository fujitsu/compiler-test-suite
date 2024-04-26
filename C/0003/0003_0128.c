#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s64(svbool_t pg, const uint32_t *base, int64_t vnum)
{
  svint64_t r;
  r = svldff1uw_vnum_s64(pg, base, 6);
  dummy(r);
}
void test_u64(svbool_t pg, const uint32_t *base, int64_t vnum)
{
  svuint64_t r;
  r = svldff1uw_vnum_u64(pg, base, 6);
  dummy(r);
}
void dummy() {};

int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif

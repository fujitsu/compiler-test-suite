#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s64_s64(svbool_t pg, const uint32_t *base, svint64_t index)
{
  svint64_t r;
  r = svldff1uw_gather_s64index_s64(pg, base, index);
  dummy(r);
}
void test_s64_u64(svbool_t pg, const uint32_t *base, svint64_t index)
{
  svuint64_t r;
  r = svldff1uw_gather_s64index_u64(pg, base, index);
  dummy(r);
}
void test_u64_s64(svbool_t pg, const uint32_t *base, svuint64_t index)
{
  svint64_t r;
  r = svldff1uw_gather_u64index_s64(pg, base, index);
  dummy(r);
}
void test_u64_u64(svbool_t pg, const uint32_t *base, svuint64_t index)
{
  svuint64_t r;
  r = svldff1uw_gather_u64index_u64(pg, base, index);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_u32_s32(svbool_t pg, const svuint32_t base)
{
  svint32_t r;
  r = svldff1uh_gather_u32base_s32(pg, base);
  dummy(r);
}
void test_u64_s64(svbool_t pg, const svuint64_t base)
{
  svint64_t r;
  r = svldff1uh_gather_u64base_s64(pg, base);
  dummy(r);
}
void test_u32_u32(svbool_t pg, const svuint32_t base)
{
  svuint32_t r;
  r = svldff1uh_gather_u32base_u32(pg, base);
  dummy(r);
}
void test_u64_u64(svbool_t pg, const svuint64_t base)
{
  svuint64_t r;
  r = svldff1uh_gather_u64base_u64(pg, base);
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

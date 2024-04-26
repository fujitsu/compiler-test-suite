#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_u64_s64(svbool_t pg, const svuint64_t base, int64_t offset)
{
  svint64_t r;
  r = svld1sw_gather_u64base_offset_s64(pg, base, offset);
  dummy(r);
}
void test_u64_u64(svbool_t pg, const svuint64_t base, int64_t offset)
{
  svuint64_t r;
  r = svld1sw_gather_u64base_offset_u64(pg, base, offset);
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

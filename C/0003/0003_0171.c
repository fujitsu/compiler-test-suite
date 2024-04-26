#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s32(svbool_t pg, const uint16_t *base, int64_t vnum)
{
  svint32_t r;
  r = svld1uh_vnum_s32(pg, base, -1);
  dummy(r);
}
void test_s64(svbool_t pg, const uint16_t *base, int64_t vnum)
{
  svint64_t r;
  r = svld1uh_vnum_s64(pg, base, -1);
  dummy(r);
}
void test_u32(svbool_t pg, const uint16_t *base, int64_t vnum)
{
  svuint32_t r;
  r = svld1uh_vnum_u32(pg, base, -1);
  dummy(r);
}
void test_u64(svbool_t pg, const uint16_t *base, int64_t vnum)
{
  svuint64_t r;
  r = svld1uh_vnum_u64(pg, base, -1);
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

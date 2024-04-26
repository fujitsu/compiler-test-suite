#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s16(svbool_t pg, const int8_t *base)
{
  svint16_t r;
  r = svldff1sb_s16(pg, base);
  dummy(r);
}
void test_s32(svbool_t pg, const int8_t *base)
{
  svint32_t r;
  r = svldff1sb_s32(pg, base);
  dummy(r);
}
void test_s64(svbool_t pg, const int8_t *base)
{
  svint64_t r;
  r = svldff1sb_s64(pg, base);
  dummy(r);
}
void test_u16(svbool_t pg, const int8_t *base)
{
  svuint16_t r;
  r = svldff1sb_u16(pg, base);
  dummy(r);
}
void test_u32(svbool_t pg, const int8_t *base)
{
  svuint32_t r;
  r = svldff1sb_u32(pg, base);
  dummy(r);
}
void test_u64(svbool_t pg, const int8_t *base)
{
  svuint64_t r;
  r = svldff1sb_u64(pg, base);
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

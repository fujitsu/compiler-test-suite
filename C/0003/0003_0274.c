#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_s32(svbool_t pg, int16_t *base, int64_t vnum, svint32_t data)
{
  svst1h_vnum_s32(pg, base, -8, data);
}
void test_s64(svbool_t pg, int16_t *base, int64_t vnum, svint64_t data)
{
  svst1h_vnum_s64(pg, base, -7, data);
}
void test_u32(svbool_t pg, uint16_t *base, int64_t vnum, svuint32_t data)
{
  svst1h_vnum_u32(pg, base, -6, data);
}
void test_u64(svbool_t pg, uint16_t *base, int64_t vnum, svuint64_t data)
{
  svst1h_vnum_u64(pg, base, -5, data);
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

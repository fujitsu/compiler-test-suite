#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_s16(svbool_t pg, int8_t *base, svint16_t data)
{
  svst1b_s16(pg, base, data);
}
void test_s32(svbool_t pg, int8_t *base, svint32_t data)
{
  svst1b_s32(pg, base, data);
}
void test_s64(svbool_t pg, int8_t *base, svint64_t data)
{
  svst1b_s64(pg, base, data);
}
void test_u16(svbool_t pg, uint8_t *base, svuint16_t data)
{
  svst1b_u16(pg, base, data);
}
void test_u32(svbool_t pg, uint8_t *base, svuint32_t data)
{
  svst1b_u32(pg, base, data);
}
void test_u64(svbool_t pg, uint8_t *base, svuint64_t data)
{
  svst1b_u64(pg, base, data);
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

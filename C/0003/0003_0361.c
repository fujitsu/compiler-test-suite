#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>

void test_s16(svbool_t pg, const uint8_t *base, int64_t vnum)
{
  svint16_t r;

  r = svld1ub_vnum_s16(pg, base, vnum);
  dummy(r);
}

void test_s32(svbool_t pg, const uint8_t *base, int64_t vnum)
{
  svint32_t r;

  r = svld1ub_vnum_s32(pg, base, vnum);
  dummy(r);
}

void test_s64(svbool_t pg, const uint8_t *base, int64_t vnum)
{
  svint64_t r;

  r = svld1ub_vnum_s64(pg, base, vnum);
  dummy(r);
}

void test_u16(svbool_t pg, const uint8_t *base, int64_t vnum)
{
  svuint16_t r;

  r = svld1ub_vnum_u16(pg, base, vnum);
  dummy(r);
}

void test_u32(svbool_t pg, const uint8_t *base, int64_t vnum)
{
  svuint32_t r;

  r = svld1ub_vnum_u32(pg, base, vnum);
  dummy(r);
}

void test_u64(svbool_t pg, const uint8_t *base, int64_t vnum)
{
  svuint64_t r;

  r = svld1ub_vnum_u64(pg, base, vnum);
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

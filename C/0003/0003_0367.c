#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>

void test_s8(svbool_t pg, int8_t *base, int64_t vnum, svint8_t data)
{
   svst1_vnum_s8(pg, base, vnum, data);
}

void test_s16(svbool_t pg, int16_t *base, int64_t vnum, svint16_t data)
{
  svst1_vnum_s16(pg, base, vnum, data);
}

void test_s32(svbool_t pg, int32_t *base, int64_t vnum, svint32_t data)
{
  svst1_vnum_s32(pg, base, vnum, data);
}

void test_s64(svbool_t pg, int64_t *base, int64_t vnum, svint64_t data)
{
  svst1_vnum_s64(pg, base, vnum, data);
}

void test_u8(svbool_t pg, uint8_t *base, int64_t vnum, svuint8_t data)
{
  svst1_vnum_u8(pg, base, vnum, data);
}

void test_u16(svbool_t pg, uint16_t *base, int64_t vnum, svuint16_t data)
{
  svst1_vnum_u16(pg, base, vnum, data);
}

void test_u32(svbool_t pg, uint32_t *base, int64_t vnum, svuint32_t data)
{
  svst1_vnum_u32(pg, base, vnum, data);
}

void test_u64(svbool_t pg, uint64_t *base, int64_t vnum, svuint64_t data)
{
  svst1_vnum_u64(pg, base, vnum, data);
}

void test_f32(svbool_t pg, float32_t *base, int64_t vnum, svfloat32_t data)
{
  svst1_vnum_f32(pg, base, vnum, data);
}

void test_f64(svbool_t pg, float64_t *base, int64_t vnum, svfloat64_t data)
{
  svst1_vnum_f64(pg, base, vnum, data);
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

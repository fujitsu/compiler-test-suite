#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>

void test_s8(svbool_t pg, int64_t vnum, int8_t *base)
{
  svint8x3_t data;
  svst3_vnum_s8(pg, base, vnum, data);
}

void test_s16(svbool_t pg, int64_t vnum, int16_t *base)
{
  svint16x3_t data;
  svst3_vnum_s16(pg, base, vnum, data);
}

void test_s32(svbool_t pg, int64_t vnum, int32_t *base)
{
  svint32x3_t data;
  svst3_vnum_s32(pg, base, vnum, data);
}

void test_s64(svbool_t pg, int64_t vnum, int64_t *base)
{
  svint64x3_t data;
  svst3_vnum_s64(pg, base, vnum, data);
}

void test_u8(svbool_t pg, int64_t vnum, uint8_t *base)
{
  svuint8x3_t data;
  svst3_vnum_u8(pg, base, vnum, data);
}

void test_u16(svbool_t pg, int64_t vnum, uint16_t *base)
{
  svuint16x3_t data;
  svst3_vnum_u16(pg, base, vnum, data);
}

void test_u32(svbool_t pg, int64_t vnum, uint32_t *base)
{
  svuint32x3_t data;
  svst3_vnum_u32(pg, base, vnum, data);
}

void test_u64(svbool_t pg, int64_t vnum, uint64_t *base)
{
  svuint64x3_t data;
  svst3_vnum_u64(pg, base, vnum, data);
}

void test_f16(svbool_t pg, int64_t vnum, float16_t *base)
{
  svfloat16x3_t data;
  svst3_vnum_f16(pg, base, vnum, data);
}

void test_f32(svbool_t pg, int64_t vnum, float32_t *base)
{
  svfloat32x3_t data;
  svst3_vnum_f32(pg, base, vnum, data);
}

void test_f64(svbool_t pg, int64_t vnum, float64_t *base)
{
  svfloat64x3_t data;
  svst3_vnum_f64(pg, base, vnum, data);
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

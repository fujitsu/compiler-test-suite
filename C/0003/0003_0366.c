#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>

void test_s8(svbool_t pg, int8_t *base, svint8_t data)
{
   svst1_s8(pg, base, data);
}

void test_s16(svbool_t pg, int16_t *base, svint16_t data)
{
  svst1_s16(pg, base, data);
}

void test_s32(svbool_t pg, int32_t *base, svint32_t data)
{
  svst1_s32(pg, base, data);
}

void test_s64(svbool_t pg, int64_t *base, svint64_t data)
{
  svst1_s64(pg, base, data);
}

void test_u8(svbool_t pg, uint8_t *base, svuint8_t data)
{
  svst1_u8(pg, base, data);
}

void test_u16(svbool_t pg, uint16_t *base, svuint16_t data)
{
  svst1_u16(pg, base, data);
}

void test_u32(svbool_t pg, uint32_t *base, svuint32_t data)
{
  svst1_u32(pg, base, data);
}

void test_u64(svbool_t pg, uint64_t *base, svuint64_t data)
{
  svst1_u64(pg, base, data);
}

void test_f32(svbool_t pg, float32_t *base, svfloat32_t data)
{
  svst1_f32(pg, base, data);
}

void test_f64(svbool_t pg, float64_t *base, svfloat64_t data)
{
  svst1_f64(pg, base, data);
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

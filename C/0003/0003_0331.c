#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s8(svbool_t pg, const int8_t *base)
{
  svint8x3_t r;
  r = svld3_s8(pg, base);
}
void test_s16(svbool_t pg, const int16_t *base)
{
  svint16x3_t r;
  r = svld3_s16(pg, base);
}
void test_s32(svbool_t pg, const int32_t *base)
{
  svint32x3_t r;
  r = svld3_s32(pg, base);
}
void test_s64(svbool_t pg, const int64_t *base)
{
  svint64x3_t r;
  r = svld3_s64(pg, base);
}
void test_u8(svbool_t pg, const uint8_t *base)
{
  svuint8x3_t r;
  r = svld3_u8(pg, base);
}
void test_u16(svbool_t pg, const uint16_t *base)
{
  svuint16x3_t r;
  r = svld3_u16(pg, base);
}
void test_u32(svbool_t pg, const uint32_t *base)
{
  svuint32x3_t r;
  r = svld3_u32(pg, base);
}
void test_u64(svbool_t pg, const uint64_t *base)
{
  svuint64x3_t r;
  r = svld3_u64(pg, base);
}
void test_f16(svbool_t pg, const float16_t *base)
{
  svfloat16x3_t r;
  r = svld3_f16(pg, base);
}
void test_f32(svbool_t pg, const float32_t *base)
{
  svfloat32x3_t r;
  r = svld3_f32(pg, base);
}
void test_f64(svbool_t pg, const float64_t *base)
{
  svfloat64x3_t r;
  r = svld3_f64(pg, base);
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

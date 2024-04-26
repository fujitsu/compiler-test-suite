#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s8(svbool_t pg, const int8_t *base)
{
  svint8_t r;
  r = svldff1_s8(pg, base);
  dummy(r);
}
void test_s16(svbool_t pg, const int16_t *base)
{
  svint16_t r;
  r = svldff1_s16(pg, base);
  dummy(r);
}
void test_s32(svbool_t pg, const int32_t *base)
{
  svint32_t r;
  r = svldff1_s32(pg, base);
  dummy(r);
}
void test_s64(svbool_t pg, const int64_t *base)
{
  svint64_t r;
  r = svldff1_s64(pg, base);
  dummy(r);
}
void test_u8(svbool_t pg, const uint8_t *base)
{
  svuint8_t r;
  r = svldff1_u8(pg, base);
  dummy(r);
}
void test_u16(svbool_t pg, const uint16_t *base)
{
  svuint16_t r;
  r = svldff1_u16(pg, base);
  dummy(r);
}
void test_u32(svbool_t pg, const uint32_t *base)
{
  svuint32_t r;
  r = svldff1_u32(pg, base);
  dummy(r);
}
void test_u64(svbool_t pg, const uint64_t *base)
{
  svuint64_t r;
  r = svldff1_u64(pg, base);
  dummy(r);
}
void test_f16(svbool_t pg, const float16_t *base)
{
  svfloat16_t r;
  r = svldff1_f16(pg, base);
  dummy(r);
}
void test_f32(svbool_t pg, const float32_t *base)
{
  svfloat32_t r;
  r = svldff1_f32(pg, base);
  dummy(r);
}
void test_f64(svbool_t pg, const float64_t *base)
{
  svfloat64_t r;
  r = svldff1_f64(pg, base);
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

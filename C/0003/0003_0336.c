#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>

void test_s8(svbool_t pg, const int8_t *base, int64_t num)
{
  svint8x4_t r;
  r = svld4_vnum_s8(pg, base, num);
}
void test_s16(svbool_t pg, const int16_t *base, int64_t num)
{
  svint16x4_t r;
  r = svld4_vnum_s16(pg, base, num);
}
void test_s32(svbool_t pg, const int32_t *base, int64_t num)
{
  svint32x4_t r;
  r = svld4_vnum_s32(pg, base, num);
}
void test_s64(svbool_t pg, const int64_t *base, int64_t num)
{
  svint64x4_t r;
  r = svld4_vnum_s64(pg, base, num);
}
void test_u8(svbool_t pg, const uint8_t *base, int64_t num)
{
  svuint8x4_t r;
  r = svld4_vnum_u8(pg, base, num);
}
void test_u16(svbool_t pg, const uint16_t *base, int64_t num)
{
  svuint16x4_t r;
  r = svld4_vnum_u16(pg, base, num);
}
void test_u32(svbool_t pg, const uint32_t *base, int64_t num)
{
  svuint32x4_t r;
  r = svld4_vnum_u32(pg, base, num);
}
void test_u64(svbool_t pg, const uint64_t *base, int64_t num)
{
  svuint64x4_t r;
  r = svld4_vnum_u64(pg, base, num);
}
void test_f16(svbool_t pg, const float16_t *base, int64_t num)
{
  svfloat16x4_t r;
  r = svld4_vnum_f16(pg, base, num);
}
void test_f32(svbool_t pg, const float32_t *base, int64_t num)
{
  svfloat32x4_t r;
  r = svld4_vnum_f32(pg, base, num);
}
void test_f64(svbool_t pg, const float64_t *base, int64_t num)
{
  svfloat64x4_t r;
  r = svld4_vnum_f64(pg, base, num);
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

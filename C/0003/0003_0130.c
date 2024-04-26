#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s8(svbool_t pg, const int8_t *base, int64_t vnum)
{
  svint8_t r;
  r = svldnf1_vnum_s8(pg, base, -3);
  dummy(r);
}
void test_s16(svbool_t pg, const int16_t *base, int64_t vnum)
{
  svint16_t r;
  r = svldnf1_vnum_s16(pg, base, -2);
  dummy(r);
}
void test_s32(svbool_t pg, const int32_t *base, int64_t vnum)
{
  svint32_t r;
  r = svldnf1_vnum_s32(pg, base, -1);
  dummy(r);
}
void test_s64(svbool_t pg, const int64_t *base, int64_t vnum)
{
  svint64_t r;
  r = svldnf1_vnum_s64(pg, base, 1);
  dummy(r);
}
void test_u8(svbool_t pg, const uint8_t *base, int64_t vnum)
{
  svuint8_t r;
  r = svldnf1_vnum_u8(pg, base, 2);
  dummy(r);
}
void test_u16(svbool_t pg, const uint16_t *base, int64_t vnum)
{
  svuint16_t r;
  r = svldnf1_vnum_u16(pg, base, 3);
  dummy(r);
}
void test_u32(svbool_t pg, const uint32_t *base, int64_t vnum)
{
  svuint32_t r;
  r = svldnf1_vnum_u32(pg, base, 4);
  dummy(r);
}
void test_u64(svbool_t pg, const uint64_t *base, int64_t vnum)
{
  svuint64_t r;
  r = svldnf1_vnum_u64(pg, base, 5);
  dummy(r);
}
void test_f16(svbool_t pg, const float16_t *base, int64_t vnum)
{
  svfloat16_t r;
  r = svldnf1_vnum_f16(pg, base, 6);
  dummy(r);
}
void test_f32(svbool_t pg, const float32_t *base, int64_t vnum)
{
  svfloat32_t r;
  r = svldnf1_vnum_f32(pg, base, 7);
  dummy(r);
}
void test_f64(svbool_t pg, const float64_t *base, int64_t vnum)
{
  svfloat64_t r;
  r = svldnf1_vnum_f64(pg, base, -4);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_s32_s32(svbool_t pg, const uint16_t *base, svint32_t index)
{
  svint32_t r;
  r = svldff1uh_gather_s32index_s32(pg, base, index);
  dummy(r);
}
void test_s64_s64(svbool_t pg, const uint16_t *base, svint64_t index)
{
  svint64_t r;
  r = svldff1uh_gather_s64index_s64(pg, base, index);
  dummy(r);
}
void test_s32_u32(svbool_t pg, const uint16_t *base, svint32_t index)
{
  svuint32_t r;
  r = svldff1uh_gather_s32index_u32(pg, base, index);
  dummy(r);
}
void test_s64_u64(svbool_t pg, const uint16_t *base, svint64_t index)
{
  svuint64_t r;
  r = svldff1uh_gather_s64index_u64(pg, base, index);
  dummy(r);
}
void test_u32_s32(svbool_t pg, const uint16_t *base, svuint32_t index)
{
  svint32_t r;
  r = svldff1uh_gather_u32index_s32(pg, base, index);
  dummy(r);
}
void test_u64_s64(svbool_t pg, const uint16_t *base, svuint64_t index)
{
  svint64_t r;
  r = svldff1uh_gather_u64index_s64(pg, base, index);
  dummy(r);
}
void test_u32_u32(svbool_t pg, const uint16_t *base, svuint32_t index)
{
  svuint32_t r;
  r = svldff1uh_gather_u32index_u32(pg, base, index);
  dummy(r);
}
void test_u64_u64(svbool_t pg, const uint16_t *base, svuint64_t index)
{
  svuint64_t r;
  r = svldff1uh_gather_u64index_u64(pg, base, index);
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

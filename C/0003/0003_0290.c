#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_adrh1(const svuint32_t baseu32, const svuint64_t baseu64)
{
svuint32_t vu4;
svuint64_t vu8;
svint32_t indexs32;
svint64_t indexs64;
svuint32_t indexu32;
svuint64_t indexu64;
  vu4  = svadrh_u32base_s32index(baseu32, indexs32);
  vu8  = svadrh_u64base_s64index(baseu64, indexs64);
}
void test_adrh2(const svuint32_t baseu32, const svuint64_t baseu64)
{
svuint32_t vu4;
svuint64_t vu8;
svint32_t indexs32;
svint64_t indexs64;
svuint32_t indexu32;
svuint64_t indexu64;
  vu4  = svadrh_u32base_u32index(baseu32, indexu32);
  vu8  = svadrh_u64base_u64index(baseu64, indexu64);
  dummy(vu4,vu8);
}
void dummy() {}

int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif

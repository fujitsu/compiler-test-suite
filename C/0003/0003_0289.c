#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_adrb1(const svuint32_t baseu32, const svuint64_t baseu64)
{
svuint32_t vu4;
svuint64_t vu8;
svint32_t offsets32;
svint64_t offsets64;
svuint32_t offsetu32;
svuint64_t offsetu64;
  vu4  = svadrb_u32base_s32offset(baseu32, offsets32);
  vu8  = svadrb_u64base_s64offset(baseu64, offsets64);
  dummy(vu4,vu8);
}
void test_adrb2(const svuint32_t baseu32, const svuint64_t baseu64)
{
svuint32_t vu4;
svuint64_t vu8;
svint32_t offsets32;
svint64_t offsets64;
svuint32_t offsetu32;
svuint64_t offsetu64;
  vu4  = svadrb_u32base_u32offset(baseu32, offsetu32);
  vu8  = svadrb_u64base_u64offset(baseu64, offsetu64);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_prf_num(const uint32_t *base32, const uint64_t *base64)
{
  svbool_t pg32 = svptrue_b32();
  svbool_t pg64 = svptrue_b64();
  svuint32_t u32base1 = svld1_u32(pg32, base32);
  svuint64_t u64base1 = svld1_u64(pg64, base64); 

  svprfb_gather_u32base(  pg32, u32base1, 0);
  svprfb_gather_u32base(  pg32, u32base1, SV_PSTL1STRM);
  svprfb_gather_u64base(  pg64, u64base1, 4); 
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

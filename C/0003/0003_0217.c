#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_ptrue()
{
  svbool_t pg1, pg2, pg3, pg4;
  pg1 = svptrue_b8();
  pg2 = svptrue_b16();
  pg3 = svptrue_b32();
  pg4 = svptrue_b64();
  dummy(pg1,pg2,pg3,pg4);
}
void test_ptrue_pat()
{
  svbool_t pg1, pg2, pg3, pg4;
  pg1 = svptrue_pat_b8(SV_ALL);
  pg2 = svptrue_pat_b16(SV_VL1);
  pg3 = svptrue_pat_b32(SV_VL4);
  pg4 = svptrue_pat_b64(SV_VL5);
  dummy(pg1,pg2,pg3,pg4);
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

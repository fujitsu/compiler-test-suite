#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include "arm_sve.h"
#include "stdio.h"

void test_ld4(float64_t *base, float64_t *base2,float64_t *base3, float64_t *base4)
{
  svfloat64x4_t r,r2;
  svbool_t pg = svptrue_b64();
  for(int i=0;i<2;i++) {
    r = svld4_vnum_f64(pg, base, i);
    svst4_vnum_f64(pg, base2, i, r);
  }
  for(int i=0;i<2;i++) {
    r2 = svld4_vnum_f64(pg, base3, i);
    svst4_vnum_f64(pg, base4, i, r2);
  }
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

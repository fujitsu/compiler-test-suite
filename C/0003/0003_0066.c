#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_minv()
{
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  r4 = svminv_f32( pg,r4a);
  r8 = svminv_f64( pg,r8a);
  dummy(r4,r8);
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

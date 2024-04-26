#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_adda1()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  r4 = svadda_f32( pg,r4,r4a);
  r8 = svadda_f64( pg,r8,r8a);
  dummy(r4,r8);
}
void test_adda2()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4,r4x;
  float64_t r8,r8x;
  r4 = svadda_f32( pg,r4x,r4a);
  r8 = svadda_f64( pg,r8x,r8a);
  dummy(r4,r8);
}
void test_adda_num()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  r4 = svadda_f32( pg,4,r4a);
  r8 = svadda_f64( pg,8,r8a);
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

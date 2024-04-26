#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_tssel()
{
  svuint32_t u4b;
  svuint64_t u8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svtssel_f32( r4a, u4b);
  vr8 = svtssel_f64( r8a, u8b);
  dummy(vr4,vr8);
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

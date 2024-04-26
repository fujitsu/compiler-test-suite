#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_tmad()
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
  vr4 = svtmad_f32( r4a, r4b, 1);
  vr8 = svtmad_f64( r8a, r8b, 2 );
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

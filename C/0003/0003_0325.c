#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void dummy() {}
svfloat32_t test_cmla_lane()
{
  svfloat32_t vr4, vr4b, vr4c, vr4d;
  vr4 = svcmla_lane_f32(  vr4b, vr4c, vr4d, 0, 0);
  dummy(	vr4);
  vr4 = svcmla_lane_f32(  vr4b, vr4c, vr4d, 1, 90);
  dummy(	vr4);
  vr4 = svcmla_lane_f32(  vr4b, vr4c, vr4d, 0, 180);
  dummy(	vr4);
  vr4 = svcmla_lane_f32(  vr4b, vr4c, vr4d, 1, 270);
  dummy(	vr4);
  return vr4;
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

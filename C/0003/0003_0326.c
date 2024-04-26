#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_cadd_z()
{
  svbool_t pg;
  svfloat32_t vr4,vr4b,vr4c;
  svfloat64_t vr8,vr8b,vr8c;
  vr4 = svcadd_f32_z( pg, vr4b, vr4c, 90);
  vr8 = svcadd_f64_z( pg, vr8b, vr8c, 90);
  dummy(	vr4,	vr8);
  vr4 = svcadd_f32_z( pg, vr4b, vr4c, 270);
  vr8 = svcadd_f64_z( pg, vr8b, vr8c, 270);
  dummy(	vr4,	vr8);
}
void test_cadd_m()
{
  svbool_t pg;
  svfloat32_t vr4,vr4b,vr4c;
  svfloat64_t vr8,vr8b,vr8c;
  vr4 = svcadd_f32_m( pg, vr4b, vr4c, 90);
  vr8 = svcadd_f64_m( pg, vr8b, vr8c, 90);
  dummy(	vr4,	vr8);
  vr4 = svcadd_f32_m( pg, vr4b, vr4c, 270);
  vr8 = svcadd_f64_m( pg, vr8b, vr8c, 270);
  dummy(	vr4,	vr8);
}
void test_cadd_x()
{
  svbool_t pg;
  svfloat32_t vr4,vr4b,vr4c;
  svfloat64_t vr8,vr8b,vr8c;
  vr4 = svcadd_f32_x( pg, vr4b, vr4c, 90);
  vr8 = svcadd_f64_x( pg, vr8b, vr8c, 90);
  dummy(	vr4,	vr8);
  vr4 = svcadd_f32_x( pg, vr4b, vr4c, 270);
  vr8 = svcadd_f64_x( pg, vr8b, vr8c, 270);
  dummy(	vr4,	vr8);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_cmla_z()
{
  svbool_t pg;
  svfloat32_t vr4,vr4b,vr4c,vr4d;
  svfloat64_t vr8,vr8b,vr8c,vr8d;
  vr4 = svcmla_f32_z( pg, vr4b, vr4c, vr4d, 0);
  vr8 = svcmla_f64_z( pg, vr8b, vr8c, vr8d, 0);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_z( pg, vr4b, vr4c, vr4d, 90);
  vr8 = svcmla_f64_z( pg, vr8b, vr8c, vr8d, 90);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_z( pg, vr4b, vr4c, vr4d, 180);
  vr8 = svcmla_f64_z( pg, vr8b, vr8c, vr8d, 180);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_z( pg, vr4b, vr4c, vr4d, 270);
  vr8 = svcmla_f64_z( pg, vr8b, vr8c, vr8d, 270);
  dummy(	vr4,	vr8);
}
void test_cmla_m()
{
  svbool_t pg;
  svfloat32_t vr4,vr4b,vr4c,vr4d;
  svfloat64_t vr8,vr8b,vr8c,vr8d;
  vr4 = svcmla_f32_m( pg, vr4b, vr4c, vr4d, 0);
  vr8 = svcmla_f64_m( pg, vr8b, vr8c, vr8d, 0);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_m( pg, vr4b, vr4c, vr4d, 90);
  vr8 = svcmla_f64_m( pg, vr8b, vr8c, vr8d, 90);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_m( pg, vr4b, vr4c, vr4d, 180);
  vr8 = svcmla_f64_m( pg, vr8b, vr8c, vr8d, 180);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_m( pg, vr4b, vr4c, vr4d, 270);
  vr8 = svcmla_f64_m( pg, vr8b, vr8c, vr8d, 270);
  dummy(	vr4,	vr8);
}
void test_cmla_x()
{
  svbool_t pg;
  svfloat32_t vr4,vr4b,vr4c,vr4d;
  svfloat64_t vr8,vr8b,vr8c,vr8d;
  vr4 = svcmla_f32_x( pg, vr4b, vr4c, vr4d, 0);
  vr8 = svcmla_f64_x( pg, vr8b, vr8c, vr8d, 0);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_x( pg, vr4b, vr4c, vr4d, 90);
  vr8 = svcmla_f64_x( pg, vr8b, vr8c, vr8d, 90);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_x( pg, vr4b, vr4c, vr4d, 180);
  vr8 = svcmla_f64_x( pg, vr8b, vr8c, vr8d, 180);
  dummy(	vr4,	vr8);
  vr4 = svcmla_f32_x( pg, vr4b, vr4c, vr4d, 270);
  vr8 = svcmla_f64_x( pg, vr8b, vr8c, vr8d, 270);
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

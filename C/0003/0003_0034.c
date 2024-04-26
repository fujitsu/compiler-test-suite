#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_nmsb_z()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_f32_z( pg, r4a, r4b, r4c);
  vr8 = svnmsb_f64_z( pg, r8a, r8b, r8c);
  dummy(vr4,vr8);
}
void test_nmsb_m()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_f32_m( pg, r4a, r4b, r4c);
  vr8 = svnmsb_f64_m( pg, r8a, r8b, r8c);
  dummy(vr4,vr8);
}
void test_nmsb_x()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_f32_x( pg, r4a, r4b, r4c);
  vr8 = svnmsb_f64_x( pg, r8a, r8b, r8c);
  dummy(vr4,vr8);
}
void test_nmsb_n_z()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_n_f32_z( pg, r4a, r4b, r4);
  vr8 = svnmsb_n_f64_z( pg, r8a, r8b, r8);
  dummy(vr4,vr8);
}
void test_nmsb_n_m()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_n_f32_m( pg, r4a, r4b, r4);
  vr8 = svnmsb_n_f64_m( pg, r8a, r8b, r8);
  dummy(vr4,vr8);
}
void test_nmsb_n_x()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_n_f32_x( pg, r4a, r4b, r4);
  vr8 = svnmsb_n_f64_x( pg, r8a, r8b, r8);
  dummy(vr4,vr8);
}
void test_nmsb_num_z()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_n_f32_z( pg, r4a, r4b, 4);
  vr8 = svnmsb_n_f64_z( pg, r8a, r8b, 8);
  dummy(vr4,vr8);
}
void test_nmsb_num_m()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_n_f32_m( pg, r4a, r4b, 4);
  vr8 = svnmsb_n_f64_m( pg, r8a, r8b, 8);
  dummy(vr4,vr8);
}
void test_nmsb_num_x()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  vr4 = svnmsb_n_f32_x( pg, r4a, r4b, 4);
  vr8 = svnmsb_n_f64_x( pg, r8a, r8b, 8);
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

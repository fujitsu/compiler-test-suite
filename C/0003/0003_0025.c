#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_abd_z()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_f32_z( pg,r4a,r4b);
  vr8 = svabd_f64_z( pg,r8a,r8b);
  dummy(vr4,vr8);
}
void test_abd_m()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_f32_m( pg,r4a,r4b);
  vr8 = svabd_f64_m( pg,r8a,r8b);
  dummy(vr4,vr8);
}
void test_abd_x()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_f32_x( pg,r4a,r4b);
  vr8 = svabd_f64_x( pg,r8a,r8b);
  dummy(vr4,vr8);
}
void test_abd_n_z()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_n_f32_z( pg,r4a,r4);
  vr8 = svabd_n_f64_z( pg,r8a,r8);
  dummy(vr4,vr8);
}
void test_abd_n_m()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_n_f32_m( pg,r4a,r4);
  vr8 = svabd_n_f64_m( pg,r8a,r8);
  dummy(vr4,vr8);
}
void test_abd_n_x()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_n_f32_x( pg,r4a,r4);
  vr8 = svabd_n_f64_x( pg,r8a,r8);
  dummy(vr4,vr8);
}
void test_abd_num_z()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_n_f32_z( pg,r4a,4);
  vr8 = svabd_n_f64_z( pg,r8a,8);
  dummy(vr4,vr8);
}
void test_abd_num_m()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_n_f32_m( pg,r4a,4);
  vr8 = svabd_n_f64_m( pg,r8a,8);
  dummy(vr4,vr8);
}
void test_abd_num_x()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svabd_n_f32_x( pg,r4a,4);
  vr8 = svabd_n_f64_x( pg,r8a,8);
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

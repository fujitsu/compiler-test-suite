#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_add_z()
{
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  vr4 = svadd_f32_z( pg,r4a,r4b);
  dummy(vr4);
  vr8 = svadd_f64_z( pg,r8a,r8b);
  dummy(vr8);
}
void test_add_m()
{
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
 svfloat32_t r4a,r4b;
 svfloat64_t r8a,r8b;
  vr4 = svadd_f32_m( pg,r4a,r4b);
  dummy(vr4);
  vr8 = svadd_f64_m( pg,r8a,r8b);
  dummy(vr8);
}
void test_add_x()
{
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
 svfloat32_t r4a,r4b;
 svfloat64_t r8a,r8b;
  vr4 = svadd_f32_x( pg,r4a,r4b);
  vr8 = svadd_f64_x( pg,r8a,r8b);
  dummy(vr4,vr8);
}
void test_add_n_z()
{
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
svfloat32_t r4a;
svfloat64_t r8a;
 float32_t r4;
 float64_t r8;
  vr4 = svadd_n_f32_z( pg,r4a,r4);
  dummy(vr4);
  vr8 = svadd_n_f64_z( pg,r8a,r8);
  dummy(vr8);
}
void test_add_num_z()
{
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
svfloat32_t r4a;
svfloat64_t r8a;
  vr4 = svadd_n_f32_z( pg,r4a,4.0);
  dummy(vr4);
  vr8 = svadd_n_f64_z( pg,r8a,8.0);
  dummy(vr8);
}
void test_add_n_m()
{
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
svfloat32_t r4a;
svfloat64_t r8a;
 float32_t r4;
 float64_t r8;
  vr4 = svadd_n_f32_m( pg,r4a,r4);
  vr8 = svadd_n_f64_m( pg,r8a,r8);
  dummy(vr4,vr8);
}
void test_add_num_m()
{
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
svfloat32_t r4a;
svfloat64_t r8a;
  vr4 = svadd_n_f32_m( pg,r4a,4.0);
  vr8 = svadd_n_f64_m( pg,r8a,8.0);
  dummy(vr4,vr8);
}
void test_add_n_x()
{
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
 svfloat32_t r4a;
 svfloat64_t r8a;
 float32_t r4;
 float64_t r8;
 
  vr4 = svadd_n_f32_x( pg,r4a,r4);
  vr8 = svadd_n_f64_x( pg,r8a,r8);
  dummy(vr4,vr8);
}
void test_add_num_x()
{
svfloat32_t vr4;
svfloat64_t vr8;
svbool_t pg;
svfloat32_t r4a;
svfloat64_t r8a;
  vr4 = svadd_n_f32_x( pg,r4a,4.0);
  vr8 = svadd_n_f64_x( pg,r8a,8.0);
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

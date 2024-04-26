#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_scale_z()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_f32_z( pg,r4a,i4b);
  vr8 = svscale_f64_z( pg,r8a,i8b);
  dummy(vr4,vr8);
}
void test_scale_m()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_f32_m( pg,r4a,i4b);
  vr8 = svscale_f64_m( pg,r8a,i8b);
  dummy(vr4,vr8);
}
void test_scale_x()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_f32_x( pg,r4a,i4b);
  vr8 = svscale_f64_x( pg,r8a,i8b);
  dummy(vr4,vr8);
}
void test_scale_n_z()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_n_f32_z( pg,r4a,i4);
  vr8 = svscale_n_f64_z( pg,r8a,i8);
  dummy(vr4,vr8);
}
void test_scale_num_z()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_n_f32_z( pg,r4a,4);
  vr8 = svscale_n_f64_z( pg,r8a,8);
  dummy(vr4,vr8);
}
void test_scale_n_m()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_n_f32_m( pg,r4a,i4);
  vr8 = svscale_n_f64_m( pg,r8a,i8);
  dummy(vr4,vr8);
}
void test_scale_num_m()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_n_f32_m( pg,r4a,4);
  vr8 = svscale_n_f64_m( pg,r8a,8);
  dummy(vr4,vr8);
}
void test_scale_n_x()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_n_f32_x( pg,r4a,i4);
  vr8 = svscale_n_f64_x( pg,r8a,i8);
  dummy(vr4,vr8);
}
void test_scale_num_x()
{
  svint32_t i4b;
  svint64_t i8b;
  svfloat32_t vr4;
  svfloat64_t vr8;
  svbool_t pg;
  svfloat32_t r4a,r4b,r4c;
  svfloat64_t r8a,r8b,r8c;
  float32_t r4;
  float64_t r8;
  signed int i4;
  signed long long int i8;
  vr4 = svscale_n_f32_x( pg,r4a,4);
  vr8 = svscale_n_f64_x( pg,r8a,8);
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

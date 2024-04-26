#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_acge()
{
  svbool_t pg,pg1,pg2,pg3,pg4,pg5,pg6;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  pg1 = svacge_f32( pg,r4a,r4b); 
  pg2 = svacge_f64( pg,r8a,r8b);
  dummy(pg1,pg2);
}
void test_acge_n()
{
  svbool_t pg,pg1,pg2,pg3,pg4,pg5,pg6;
  svfloat32_t r4a,r4b;
  svfloat64_t r8a,r8b;
  float32_t r4;
  float64_t r8;
  pg1 = svacge_n_f32( pg,r4a,r4); 
  pg2 = svacge_n_f64( pg,r8a,r8); 
  pg3 = svacge_n_f32( pg,r4a,4); 
  pg4 = svacge_n_f64( pg,r8a,8); 
  dummy(pg1,pg2);
  pg5 = svacge_n_f32( pg,r4a,0); 
  pg6 = svacge_n_f64( pg,r8a,0); 
  dummy(pg3,pg4,pg5,pg6);
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

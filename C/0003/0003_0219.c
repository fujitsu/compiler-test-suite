#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_pmov()
{
  svbool_t pg, pg1, pg2;
  pg1 = svmov_b_z( pg, pg2);
  dummy(pg1);
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

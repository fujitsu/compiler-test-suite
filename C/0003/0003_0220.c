#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_pand()
{
  svbool_t pg, pg1, pg4, pg5;
  pg1 = svand_b_z( pg, pg4, pg5);
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

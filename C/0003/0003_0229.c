#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_brkb()
{
  svbool_t pg, pg1, pg2, pg3, pg4, pg5, pg6;
  pg1 = svbrkb_b_z( pg, pg2);
  pg3 = svbrkb_b_m( pg4, pg, pg5);
  dummy(pg1,pg3);
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

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
unsigned long long u8;
void test_cntd()
{
  u8 = svcntd( );
}
void test_cntd_p()
{
  u8 = svcntd_pat( 31);
}
int main()
{
  return 0;
}
#else
int main() {
return 0;
}
#endif

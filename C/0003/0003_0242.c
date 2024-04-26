#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
unsigned long long u8;
void test_cntw()
{
  u8 = svcntw( );
}
void test_cntw_p()
{
  u8 = svcntw_pat( 31);
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

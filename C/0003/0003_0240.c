#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
unsigned long long u8;
void test_cntb()
{
  u8 = svcntb( );
}
void test_cntb_p()
{
  u8 = svcntb_pat( 31);
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

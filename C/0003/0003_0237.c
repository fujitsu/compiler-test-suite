#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
void test_setffr()
{
  svsetffr( );
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

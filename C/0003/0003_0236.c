#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_rdffr()
{ 
  svbool_t pg1;
  pg1 = svrdffr( );
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

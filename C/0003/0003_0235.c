#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <stdbool.h>
#include <arm_sve.h>
void test_ptest()
{
  svbool_t pg,pga,pgb;
  bool pgx,pgy,pgz;
  pgx = svptest_any( pga,pgb);
  pgy = svptest_first( pga,pgb);
  pgz = svptest_last( pga,pgb);
  dummy(pgx,pgy,pgz);
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

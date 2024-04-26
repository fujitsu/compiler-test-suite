#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
unsigned long long u81,u82,u83,u84;
void test_cntp()
{
  svbool_t pg,pga,pgb;
  u81 = svcntp_b8( pg, pga);
  u82 = svcntp_b16( pg, pga);
  u83 = svcntp_b32( pg, pga);
  u84 = svcntp_b64( pg, pga);
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

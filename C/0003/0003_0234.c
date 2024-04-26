#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
void dummy() ;
#include <arm_sve.h>
void test_pnext()
{
  svbool_t pg, pg1, pg2, pg3, pg4, pg5, pg6;
  svbool_t pg7, pg8;
  pg1 = svpnext_b8( pg, pg2);
  pg3 = svpnext_b16( pg, pg4);
  pg5 = svpnext_b32( pg, pg6);
  pg7 = svpnext_b64( pg, pg8);
  dummy(pg1,pg3,pg5,pg7);
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

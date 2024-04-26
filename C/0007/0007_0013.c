#include <stdio.h>
#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
svbool_t clobber_p()
{
  svbool_t pg = svptrue_b64();
  return pg;
}
void check(unsigned char *p) {
  unsigned char pp;
  for(int i=0;i<8;i++) {
    pp = *p++;
    if (pp != 1) printf("NG:%d %u\n",i,pp);
  }
  printf("ok\n");
}
#endif
int main()
{
#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
  svbool_t ret_p;
  ret_p = clobber_p();
  check((unsigned char *)&ret_p);
#else
  printf("ok\n");
#endif
  return 0;
}

#include <stdio.h>
#include <stdlib.h>

#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
#include <arm_sve.h>
#endif

int main(void)
{
#if defined(__aarch64__) && defined(__ARM_FEATURE_SVE)
  int i;

  double x[8] = { 1,  2,  3,  4,  5,  6,  7,  8 };
  double y[8] = { 9, 10, 11, 12, 13, 14, 15, 16 };
  double z[8] = { 17,18, 19, 20, 21, 22, 23, 24 };
  double w[8];
  double res[8] = {2, 4, 12, 16, 30, 36, 56, 64};

  svbool_t pg = svptrue_b64();

  svfloat64_t vx = svld1_f64(pg, x);
  svfloat64_t vy = svld1_f64(pg, y);
  svfloat64_t vz = svld1_f64(pg, z);

  svfloat64_t vw = svcmla_f64_z(pg, vx, vx, vx, 0);

  svst1_f64(pg, w, vw);

  for (i = 0; i < 8; i++) {
    if (w[i] != res[i]) {
      printf("NG: %d  %f %f\n", i, w[i], res[i]);
    }
  }
#endif
  printf("ok\n");
  return 0;
}

#include <stdio.h>
#include <math.h>
#include <complex.h>

void calc_c8(float _Complex * restrict c8x, float _Complex * restrict c8y, float r4x, float r4y)
{
  *c8x = *c8y + r4x + r4y;
}

void calc_c16(double _Complex * restrict c16x, double _Complex * restrict c16y, double r8x, double r8y)
{
  *c16x = *c16y + r8x + r8y;
}

int main(void) 
{
  float _Complex c8x, c8y;
  double _Complex c16x, c16y;
  float r4x, r4y;
  double r8x, r8y;
  const float _Complex c8a = 6.0f - 1.0fi;
  const double _Complex c16a = 6.0 - 1.0i;
  const float r4g = 0.0f;
  const double r8g = 0.0;

  c8x = 1.0f + 1.0fi;
  c8y = 2.0f - 1.0fi;
  c16x = 1.0 + 1.0i;
  c16y = 2.0 - 1.0i;
  r4x = r4y = 2.0f;
  r8x = r8y = 2.0;
  calc_c8(&c8x, &c8y, r4x, r4y);
  calc_c16(&c16x, &c16y, r8x, r8y);
  if ((fabsf(crealf(c8a) - crealf(c8x)) <= r4g)
      && (fabsf(cimagf(c8a) - cimagf(c8x)) <= r4g)) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %f + %f I\n", crealf(c8x),cimagf(c8x));
  }
  if ((fabs(creal(c16a) - creal(c16x)) <= r8g)
      && (fabs(cimag(c16a) - cimag(c16x)) <= r8g)) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf + %lf I\n", creal(c16x), cimag(c16x));
  }
  return 0;
}

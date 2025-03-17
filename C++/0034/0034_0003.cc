#include <cmath>
#include <iostream>
#include <valarray>

#ifndef FLT_EPSILON
#define FLT_EPSILON (1.19209290e-07F)
#endif
const float FLT_2EP = 2 * FLT_EPSILON;
const double DBL_2EP = FLT_2EP;
const long double LDBL_2EP = FLT_2EP;

int atan2d_vv() {
  std::valarray<double> y(2), x(2), z(2);
  y[0] = 1;
  y[1] = -1;
  x[0] = 1;
  x[1] = 1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= DBL_2EP) &&
         (abs(z[1] - (-M_PI / 4)) <= DBL_2EP);
}

int atan2d_cv() {
  std::valarray<double> x(2), z(2);
  double y = 1;
  x[0] = 1;
  x[1] = -1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= DBL_2EP) &&
         (abs(z[1] - (M_PI - M_PI / 4)) <= DBL_2EP);
}

int atan2d_vc() {
  std::valarray<double> y(2), z(2);
  y[0] = 1;
  y[1] = -1;
  double x = 1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= DBL_2EP) &&
         (abs(z[1] - (-M_PI / 4)) <= DBL_2EP);
}

int atan2f_vv() {
  std::valarray<float> y(2), x(2), z(2);
  y[0] = 1;
  y[1] = -1;
  x[0] = 1;
  x[1] = 1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= FLT_2EP) &&
         (abs(z[1] - (-M_PI / 4)) <= FLT_2EP);
}

int atan2f_cv() {
  std::valarray<float> x(2), z(2);
  float y = 1;
  x[0] = 1;
  x[1] = -1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= FLT_2EP) &&
         (abs(z[1] - (M_PI - M_PI / 4)) <= FLT_2EP);
}

int atan2f_vc() {
  std::valarray<float> y(2), z(2);
  y[0] = 1;
  y[1] = -1;
  float x = 1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= FLT_2EP) &&
         (abs(z[1] - (-M_PI / 4)) <= FLT_2EP);
}

int atan2l_vv() {
  std::valarray<long double> y(2), x(2), z(2);
  y[0] = 1;
  y[1] = -1;
  x[0] = 1;
  x[1] = 1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= LDBL_2EP) &&
         (abs(z[1] - (-M_PI / 4)) <= LDBL_2EP);
}

int atan2l_cv() {
  std::valarray<long double> x(2), z(2);
  long double y = 1;
  x[0] = 1;
  x[1] = -1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= LDBL_2EP) &&
         (abs(z[1] - (M_PI - M_PI / 4)) <= LDBL_2EP);
}

int atan2l_vc() {
  std::valarray<long double> y(2), z(2);
  y[0] = 1;
  y[1] = -1;
  long double x = 1;

  z = std::atan2(y, x);

  return (abs(z[0] - M_PI / 4) <= LDBL_2EP) &&
         (abs(z[1] - (-M_PI / 4)) <= LDBL_2EP);
}

int main() {
  int i = (atan2d_vv() + atan2d_cv() + atan2d_vc() + atan2f_vv() + atan2f_cv() +
           atan2f_vc() + atan2l_vv() + atan2l_cv() + atan2l_vc());
  std::cout << (i == 9 ? "OK" : "NG") << std::endl;
  return 0;
}

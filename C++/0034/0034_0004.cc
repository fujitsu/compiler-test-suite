#include <cmath>
#include <iostream>
#include <valarray>

#ifndef FLT_EPSILON
#define FLT_EPSILON (1.19209290e-07F)
#endif
const float FLT_2EP = 2 * FLT_EPSILON;
const double DBL_2EP = FLT_2EP;
const long double LDBL_2EP = FLT_2EP;

int hypd() {
  std::valarray<double> v(5), w(5), x(5), y(5);
  v[0] = 0.0;
  v[1] = 0.1;
  v[2] = 0.2;
  v[3] = 0.3;
  v[4] = 0.4;

  w = std::sinh(v);
  x = std::cosh(v);
  y = std::tanh(v);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (abs(y[i] - w[i] / x[i]) <= DBL_2EP);
  }
  return sum;
}

int hypf() {
  std::valarray<float> v(5), w(5), x(5), y(5);
  v[0] = 0.0;
  v[1] = 0.1;
  v[2] = 0.2;
  v[3] = 0.3;
  v[4] = 0.4;

  w = std::sinh(v);
  x = std::cosh(v);
  y = std::tanh(v);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (abs(y[i] - w[i] / x[i]) <= FLT_2EP);
  }
  return sum;
}

int hypl() {
  std::valarray<long double> v(5), w(5), x(5), y(5);
  v[0] = 0.0;
  v[1] = 0.1;
  v[2] = 0.2;
  v[3] = 0.3;
  v[4] = 0.4;

  w = std::sinh(v);
  x = std::cosh(v);
  y = std::tanh(v);

  int sum = 0;
  for (int i = 0; i < 5; ++i) {
    sum += (abs(y[i] - w[i] / x[i]) <= LDBL_2EP);
  }
  return sum;
}

int main() {
  int i = (hypd() + hypf() + hypl());
  std::cout << (i == 15 ? "OK" : "NG") << std::endl;
  return 0;
}

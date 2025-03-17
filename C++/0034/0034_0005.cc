#include <iostream>
#include <valarray>

#ifndef FLT_EPSILON
#define FLT_EPSILON (1.19209290e-07F)
#endif
const float FLT_2EP = 2 * FLT_EPSILON;
const double DBL_2EP = FLT_2EP;
const long double LDBL_2EP = FLT_2EP;

int sqrtd_v() {
  std::valarray<double> v(2), w(2);
  v[0] = 9.0;
  v[1] = 25.0;

  w = std::sqrt(v);

  return (abs(w[0] - 3.0) <= DBL_2EP) && (abs(w[1] - 5.0) <= DBL_2EP);
}

int sqrtf_v() {
  std::valarray<float> v(2), w(2);
  v[0] = 9.0;
  v[1] = 25.0;

  w = std::sqrt(v);

  return (abs(w[0] - 3.0) <= FLT_2EP) && (abs(w[1] - 5.0) <= FLT_2EP);
}

int sqrtl_v() {
  std::valarray<long double> v(2), w(2);
  v[0] = 9.0;
  v[1] = 25.0;

  w = std::sqrt(v);

  return (abs(w[0] - 3.0) <= LDBL_2EP) && (abs(w[1] - 5.0) <= LDBL_2EP);
}

int main() {
  int i = (sqrtd_v() + sqrtf_v() + sqrtl_v());
  std::cout << (i == 3 ? "OK" : "NG") << std::endl;
  return 0;
}

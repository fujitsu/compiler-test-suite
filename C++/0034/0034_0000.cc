#include <cstdlib>
#include <iostream>
#include <valarray>

int absi_v() {
  std::valarray<int> v(2), w(2);
  v[0] = -1;
  v[1] = -2;

  w = std::abs(v);
  return (w[0] == 1) && (w[1] == 2);
}

int absd_v() {
  std::valarray<double> v(2), w(2);
  v[0] = -1.25;
  v[1] = -0.5;

  w = std::abs(v);
  return (w[0] == 1.25) && (w[1] == 0.5);
}

int absf_v() {
  std::valarray<float> v(2), w(2);
  v[0] = -1.25;
  v[1] = -0.5;

  w = std::abs(v);
  return (w[0] == 1.25) && (w[1] == 0.5);
}

int absl_v() {
  std::valarray<long double> v(2), w(2);
  v[0] = -1.25;
  v[1] = -0.5;

  w = std::abs(v);
  return (w[0] == 1.25) && (w[1] == 0.5);
}

int main() {
  int i = (absi_v() + absd_v() + absf_v() + absl_v());
  std::cout << (i == 4 ? "OK" : "NG") << std::endl;
  return 0;
}

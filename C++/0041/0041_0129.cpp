#include <iostream>

constexpr unsigned term_limit = 64;

template<typename Float>
constexpr Float pow(Float x, unsigned n){
  return n == 0 ? 1 : x * pow(x, n-1);
}

template<typename Float>
constexpr Float factorial(unsigned n){
  return n == 0 ? 1 : n * factorial<Float>(n-1);
}

template<typename Float>
constexpr Float exp_impl(Float x, unsigned n){
  return n == 0 ? 1 : pow(x, n) / factorial<Float>(n) + exp_impl(x, n-1);
}

template<typename Float>
constexpr Float exp(Float x){
  return x > -1 ? exp_impl(x, term_limit) : 1 / exp_impl(-x, term_limit);
}

int main(void){
  constexpr auto e = exp(1.0);
  constexpr auto e_2 = exp(2.0);

  auto m1 = -1.0;
  auto e_m1 = exp(m1);

  std::cout << "e = " << e << std::endl;
  std::cout << "e^2 = " << e_2 << std::endl;
  std::cout << "1/e = " << e_m1 << std::endl;

  return 0;
}

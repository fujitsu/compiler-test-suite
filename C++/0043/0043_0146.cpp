#include <iostream>
#include <ratio>

int main(void){
  static_assert(std::deca::num == 10, "");
  static_assert(std::deca::den == 1, "");

  static_assert(std::hecto::num == 100, "");
  static_assert(std::hecto::den == 1, "");

  static_assert(std::kilo::num == 1000, "");
  static_assert(std::kilo::den == 1, "");

  static_assert(std::mega::num == 1000000, "");
  static_assert(std::mega::den == 1, "");

  static_assert(std::giga::num == 1000000000, "");
  static_assert(std::giga::den == 1, "");

  static_assert(std::tera::num == 1000000000000, "");
  static_assert(std::tera::den == 1, "");

  static_assert(std::peta::num == 1000000000000000, "");
  static_assert(std::peta::den == 1, "");

  static_assert(std::exa::num == 1000000000000000000, "");
  static_assert(std::exa::den == 1, "");

  std::cout << "ok" << std::endl;

  return 0;
}

#include <iostream>
#include <ratio>

int main(void){
  static_assert(std::atto::num == 1, "");
  static_assert(std::atto::den == 1000000000000000000, "");

  static_assert(std::femto::num == 1, "");
  static_assert(std::femto::den == 1000000000000000, "");

  static_assert(std::pico::num == 1, "");
  static_assert(std::pico::den == 1000000000000, "");

  static_assert(std::nano::num == 1, "");
  static_assert(std::nano::den == 1000000000, "");

  static_assert(std::micro::num == 1, "");
  static_assert(std::micro::den == 1000000, "");

  static_assert(std::milli::num == 1, "");
  static_assert(std::milli::den == 1000, "");

  static_assert(std::centi::num == 1, "");
  static_assert(std::centi::den == 100, "");

  static_assert(std::deci::num == 1, "");
  static_assert(std::deci::den == 10, "");

  std::cout << "ok" << std::endl;

  return 0;
}

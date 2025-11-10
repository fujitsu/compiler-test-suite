#include <iostream>
#include <type_traits>
#include <cstddef>

int main(void){
  std::integral_constant<decltype(NULL), NULL> a;
  static_assert(a == NULL, "[error]: NULL");

  std::integral_constant<bool, true> b;
  static_assert(b == true, "[error]: bool");

  std::integral_constant<int, 10> c;
  static_assert(c == 10, "[error]: int");

  std::integral_constant<char, 'A'> d;
  static_assert(d == 'A', "[error]: char");
  
  std::cout << "ok" << std::endl;

  return 0;
}

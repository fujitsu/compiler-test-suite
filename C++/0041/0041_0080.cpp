#include <iostream>
#include <type_traits>

int main(void){
  std::integral_constant<int, 10> x;
  static_assert(x == 10, "ng");

  std::integral_constant<char, 'A'> a;
  static_assert(a == 'A', "ng");

  

  std::true_type t;
  std::false_type f;
  if(t && !f) { 
    std::cout << "ok" << std::endl;
  }  else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

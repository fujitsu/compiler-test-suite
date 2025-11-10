#include <iostream>
#include <type_traits>

template<class T>
void func(T x){
  static_assert(std::is_same<T, double>::value, "T is not double");
}

int main(void){
  func(3.14);

  std::cout << "ok" << std::endl;

  return 0;
}

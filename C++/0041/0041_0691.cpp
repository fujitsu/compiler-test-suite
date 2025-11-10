#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec;

  std::tuple_element<0, decltype(vec)>::type a;
  std::tuple_element<0, decltype(vec)>::type b;
  std::tuple_element<1, decltype(vec)>::type c;
  std::tuple_element<2, decltype(vec)>::type d;
  std::tuple_element<2, decltype(vec)>::type e;

  if(std::is_same<decltype(a), int>::value &&
     std::is_same<decltype(b), int>::value &&
     std::is_same<decltype(c), int>::value &&
     std::is_same<decltype(d), int>::value &&
     std::is_same<decltype(e), int>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

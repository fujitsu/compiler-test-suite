#include <iostream>
#include <array>

template<class T>
void test(T t){
  int n = std::tuple_size<std::array<float, 3>>::value; 
  
  if(n == 3 && std::tuple_size<T>::value == 3){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
}

int main(void){
  std::array<double, 3> vec;
  test(vec); 

  return 0;
}

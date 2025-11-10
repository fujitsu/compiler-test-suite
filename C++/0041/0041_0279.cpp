#include <iostream>
#include <array>

template<class T>
bool func(T x){
  bool ret = false;

  if(std::is_same<T, decltype(x)>::value){
    ret = true;
  }

  return ret;
}

int main(void){
  std::array<int, 3> x{1, 2, 3};

  if(func(x)){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

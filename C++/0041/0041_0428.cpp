#include <iostream>
#include <utility>
#include <vector>
#include <array>

template<class T>
bool func(T t){
  bool ret = false;

  if(std::is_same<decltype(std::declval<T>()), T&&>::value){
    ret = true;
  }

  return ret;
}

int main(void){
  std::vector<int> a;
  std::array<int, 5> b{1, 2, 3, 4, 5};

  auto ret1 = func(a);
  auto ret2 = func(b);

  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

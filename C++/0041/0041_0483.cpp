#include <iostream>
#include <initializer_list>
#include <vector>
#include <array>
#include <valarray>

template<class T>
bool test(T x){
  bool ret = false;

  if(std::is_same<decltype(x), T>::value){
    ret = true;
  }

  return ret;
}

int main(void){
  std::initializer_list<std::vector<int>> a;
  std::initializer_list<std::array<int, 5>> b;
  std::initializer_list<std::initializer_list<int>> c;
  std::initializer_list<std::valarray<int>> d;
  
  auto ret1 = test(a);
  auto ret2 = test(b);
  auto ret3 = test(c);
  auto ret4 = test(d);

  if(ret1 && ret2 && ret3 && ret4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
